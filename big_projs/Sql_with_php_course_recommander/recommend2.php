<?php
require('loginCheck.php');

$dbconn = pg_connect("host=localhost dbname=A3 user=postgres password=mymjack") 
	or die('Could not connect: ' . pg_last_error());

// Two helper views
pg_query("CREATE OR REPLACE VIEW stu_with_courses AS 
		SELECT course_id, enrollments.username,letter_grades.letter_grade, min_grade, max_grade,course_ranking,instr_ranking
		FROM enrollments, Course_editions, letter_grades
		WHERE enrollments.edition_id = Course_editions.edition_id AND enrollments.letter_grade = letter_grades.letter_grade;") or die('Query failed: ' . pg_last_error());
pg_query ("CREATE OR REPLACE VIEW courses_not_taken AS 
		SELECT course_id FROM courses 
		EXCEPT 
		SELECT course_id FROM taken_courses;") or die('Query failed: ' . pg_last_error());

$rec = null;
switch($_GET['mode']) {
	case 'grade':
		pg_query("CREATE OR REPLACE VIEW recommend_courses_exp_grade AS 
				SELECT DISTINCT stu_with_courses.course_id 
				FROM topsimilar,stu_with_courses WHERE topsimilar.username = stu_with_courses.username;") or die('Query failed: ' . pg_last_error());
		pg_query("CREATE OR REPLACE VIEW avg_course_grade AS 
				SELECT distinct recommend_courses_exp_grade.course_id, avg(max_grade) AS avggrade
				FROM stu_with_courses, recommend_courses_exp_grade
				WHERE username = any (SELECT username FROM topsimilar) AND stu_with_courses.course_id = recommend_courses_exp_grade.course_id
				GROUP BY recommend_courses_exp_grade.course_id
				ORDER BY avggrade DESC
				limit 5;") or die('Query failed: ' . pg_last_error());
		$rec = pg_query("SELECT courses.*, letter_grades.letter_grade AS reason
				FROM avg_course_grade, courses , letter_grades, courses_not_taken
				WHERE courses.course_id = avg_course_grade.course_id AND courses.course_id = courses_not_taken.course_id AND avg_course_grade.avggrade <= letter_grades.max_grade AND avg_course_grade.avggrade >= letter_grades.min_grade;") or die('Query failed: ' . pg_last_error());
		break;

	case 'interest':
		pg_query("CREATE OR REPLACE VIEW recommend_courses_topic_intr AS 
				SELECT topic_interests.course_id, avg(interest_after - interest_before) AS avg_intr_increase
				FROM topic_interests, interested_in_topics
				WHERE  interested_in_topics.topic_id = topic_interests.topic_id
				GROUP BY topic_interests.course_id;") or die('Query failed: ' . pg_last_error());
		$rec = pg_query("SELECT courses.*, cast(recommend_courses_topic_intr.avg_intr_increase as decimal(10,1)) AS reason
				FROM recommend_courses_topic_intr, courses, courses_not_taken
				WHERE recommend_courses_topic_intr.course_id = courses.course_id AND courses.course_id = courses_not_taken.course_id
				ORDER BY avg_intr_increase DESC") or die('Query failed: ' . pg_last_error());
		break;

	case 'skill':
		pg_query("CREATE OR REPLACE VIEW recommend_courses_skill_impv AS 
				SELECT skill_rankings.course_id, avg(rank_after - rank_before) AS avg_skill_impv
				FROM skill_rankings, user_skills
				WHERE user_skills.skill_id = skill_rankings.skill_id
				GROUP BY skill_rankings.course_id;") or die('Query failed: ' . pg_last_error());
		$rec = pg_query("SELECT courses.*, cast(recommend_courses_skill_impv.avg_skill_impv as decimal(10,1)) AS reason
				FROM recommend_courses_skill_impv, courses, courses_not_taken
				WHERE recommend_courses_skill_impv.course_id = courses.course_id AND courses.course_id = courses_not_taken.course_id
				ORDER BY avg_skill_impv DESC") or die('Query failed: ' . pg_last_error());
		break;

	case 'happy':
		pg_query("CREATE OR REPLACE VIEW avg_ranking AS 
				SELECT stu_with_courses.course_id, avg(course_ranking) AS avg_ranking
				FROM stu_with_courses
				GROUP BY course_id;") or die('Query failed: ' . pg_last_error());
		$rec = pg_query("SELECT courses.*, cast(avg_ranking.avg_ranking as decimal(10,1)) AS reason
				FROM avg_ranking, courses, courses_not_taken
				WHERE avg_ranking.course_id = courses.course_id AND courses.course_id = courses_not_taken.course_id
				ORDER BY avg_ranking DESC") or die('Query failed: ' . pg_last_error());
}

?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
  	<meta content='width=device-width, initial-scale=1.0' name='viewport' />
  	<link rel="stylesheet" type="text/css" href="./bootstrap-min-min.css">
	<link rel="stylesheet" type="text/css" href="./theme.css">
	<script src="./scripts.js" type="text/javascript"></script>
</head>

<body>
	<div id=header>
		<div class=container>
			<div id=logo></div>
			<span onclick="logout()" class=primary-btn>Log Out</span>
		</div>
	</div>

	<div class=card>
		<div class=container>
			<h1>Recommendations</h1>
			<p>Here are some courses that 
			<?php
			switch($_GET['mode']) {
				case 'grade':echo 'have best predicted grades';break;
				case 'interest':echo 'promote your interests (Ranking is of 1-5)';break;
				case 'skill':echo 'improve your skills (Ranking is of 1-5)';break;
				case 'happy':echo 'make you happy (Ranking is of 1-5)';
			}
			?>
			</p>
			<div class=class-container>
				<?php
				if ($rec) {
					while ($entry = pg_fetch_array($rec)) {
						switch($_GET['mode']) {
							case 'grade':$reason = 'Average Grade: ';break;
							case 'interest':$reason = 'Interest promted by: ';break;
							case 'skill':$reason = 'Skills improve by: ';break;
							case 'happy':$reason = 'Average Ranking: ';
						}
						echo "<div class=entry>".$entry['dept_code'].$entry['course_number']."<span style='float:right'>".
						$reason.$entry['reason']
						."</span></div>";
					}
				}
				?>
			</div>
			<div class=btn-container>
				<a href="recommend1.php" class="back secondary-btn">Back</a>
				<a href="finally.php" class="next primary-btn">Finish</a>
			</div>
		</div>
	</div>
	<div class=footer>
		CSC343 Course Assignment<br>
		Dr. Marina Barsky<br>
		<br>
		Made By<br>
		Mohan Zhang &amp; Yanming Mai<br>
		<br>
		2016 Summer
	</div>
	<script type="text/javascript">initMain()</script>
</body>

</html>
<?php
	pg_close($dbconn);
?>
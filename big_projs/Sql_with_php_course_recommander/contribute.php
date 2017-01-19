<?php
require('loginCheck.php');
$report = json_decode($_POST['JSON'], true);
echo "\r\n<br>JSON received = ".$_POST['JSON']."<br>\r\n<br>\r\nPHP response: <br>\r\n";

$dbconn = pg_connect("host=localhost dbname=A3 user=postgres password=mymjack") 
	or die('Could not connect: ' . pg_last_error());

function nullCheck($str, $quote) {
	$quote = isset($quote)? $quote:"";
	return (empty($str)? "NULL": $quote.$str.$quote);
}

function executeQuery($query) {

	echo "     ".$query."\r\n";
	return pg_query($query);
}

foreach ($report as $r) {
	// if department not exist, insert department
	$dept = $r['dept_code'];
	if ( pg_num_rows(executeQuery("SELECT dept_code FROM departments WHERE dept_code='".$dept."';"))==0) {
		echo "Department not found. Inserting<br>\r\n";
		executeQuery("INSERT INTO departments VALUES ('".$dept."','".$r['dept_name']."');");
	}

	// if course not exist, insert course;
	$course_id = $r['course_id'];
	if (!$course_id || pg_num_rows(executeQuery("SELECT course_id FROM courses WHERE course_id='".$course_id."';"))==0) {
		$next_id = pg_fetch_array(pg_query("SELECT max(course_id) FROM courses;"))[0]+1;
		echo "Course not found. Inserting<br>\r\n";
		executeQuery("INSERT INTO courses VALUES (".$next_id.",'".$r['dept_code']."',".$r['course_number'].",".nullCheck($r['course_name'], "'").");");
		$course_id = $next_id;
	}

	// if edition not exist, insert edition
	$query = "SELECT edition_id FROM course_editions WHERE course_id='".$course_id."' AND semester='".$r['semester']."' AND year=".$r['year']." AND time_day='".$r['time']."';";
	$res = executeQuery($query);
	if (pg_num_rows($res)==0) {
		$next_id = pg_fetch_array(pg_query("SELECT max(edition_id) FROM course_editions;"))[0]+1;
		echo "Edition not recorded. Inserting<br>\r\n";
		executeQuery("INSERT INTO course_editions VALUES(".$next_id.",".$course_id.",'".$r['semester']."',".$r['year'].",".nullCheck($r['num_students'], "").",'".$r['time']."');");
		$edition_id = $next_id;
	}
	else {
		$edition_id = pg_fetch_array($res)['edition_id'];
		echo 'Edition found, edition_id='.$edition_id."<br>\r\n";
	}

	// insert enrollment if not recorded.
	$query = "SELECT edition_id FROM enrollments WHERE edition_id=".$edition_id." AND username='".$_SESSION['un']."';";
	if (pg_num_rows(executeQuery($query)) == 0) {
		echo "Enrollment not recorded. Inserting<br>\r\n";
		$query = "INSERT INTO enrollments VALUES (".$edition_id.",'".$_SESSION['un']."',".nullCheck($r['grade'],"'").",".nullCheck($r['crank'], "").",".nullCheck($r['irank'], "").");";
		executeQuery($query);
	}


	// Interests. 
	foreach ($r['interests'] as $intr => $intr_meta) {
		// if interest not exists, create interest.
		$res = executeQuery("SELECT topic_id FROM topics WHERE topic_id=".nullCheck($intr_meta[0], "")." OR topic='".$intr."';");
		if (pg_num_rows($res) == 0) {
			echo 'Topic '.$intr." does not exist. Inserting.<br>\r\n";
			$next_id = pg_fetch_array(pg_query("SELECT max(topic_id) FROM topics;"))[0]+1;
			executeQuery("INSERT INTO topics VALUES(".$next_id.",'".$intr."');");
			$topic_id = $next_id;
		}
		else {
			$topic_id = pg_fetch_array($res)['topic_id'];
		}

		// if course interest not recorded, insert.
		$query = "SELECT topic_id FROM course_topics WHERE topic_id=".$topic_id." AND course_id=".$course_id.";";
		if (pg_num_rows(executeQuery($query)) == 0) {
			echo 'Course topic '.$topic_id." not recorded. Inserting.<br>\r\n";
			executeQuery("INSERT INTO course_topics VALUES(".$topic_id.",".$course_id.")");
		}

		// if user interest not recorded, insert.
		$query = "SELECT topic_id FROM topic_interests WHERE course_id=".$course_id." AND edition_id=".$edition_id." AND username='".$_SESSION['un']."' AND topic_id=".$topic_id.";";
		if (pg_num_rows(executeQuery($query)) == 0) {
			echo "User interest ".$intr." not recorded. Inserting.<br>\r\n";
			executeQuery("INSERT INTO topic_interests VALUES(".$course_id.", ".$edition_id.", '".$_SESSION['un']."',".$topic_id.",".$intr_meta[1].",".$intr_meta[2].")");
		}
	}
	echo "Interests processed.<br>\r\n";

	// Skills. 
	foreach ($r['skills'] as $skill => $skill_meta) {
		// if skill not exists, create skill.
		$res = executeQuery("SELECT skill_id FROM skills WHERE skill_id=".nullCheck($skill_meta[0], "")." OR skill='".$skill."';");
		if (pg_num_rows($res) == 0) {
			echo 'Skill '.$skill." does not exist. Inserting.<br>\r\n";
			$next_id = pg_fetch_array(pg_query("SELECT max(skill_id) FROM skills;"))[0]+1;
			executeQuery("INSERT INTO skills VALUES(".$next_id.",'".$skill."');");
			$skill_id = $next_id;
		}
		else {
			$skill_id = pg_fetch_array($res)['skill_id'];
		}

		// if course skill not recorded, insert.
		$query = "SELECT skill_id FROM course_skills WHERE skill_id=".$skill_id." AND course_id=".$course_id.";";
		if (pg_num_rows(executeQuery($query)) == 0) {
			echo 'Course skill '.$skill_id." not recorded. Inserting.<br>\r\n";
			executeQuery("INSERT INTO course_skills VALUES(".$skill_id.",".$course_id.")");
		}

		// if user skill not recorded, insert.
		$query = "SELECT skill_id FROM skill_rankings WHERE course_id=".$course_id." AND edition_id=".$edition_id." AND username='".$_SESSION['un']."' AND skill_id=".$skill_id.";";
		if (pg_num_rows(executeQuery($query)) == 0) {
			echo "User skill ".$skill." not recorded. Inserting.<br>\r\n";
			executeQuery("INSERT INTO skill_rankings VALUES(".$course_id.", ".$edition_id.", '".$_SESSION['un']."',".$skill_id.",".$skill_meta[1].",".$skill_meta[2].")");
		}
	}
	echo "Skills processed.<br>\r\n";

}
echo "All've been processed. <br>\r\n";

// Pseudo Code:

// for each contribute course:
// 		if no dept/course ids provided, search by dept code and course number
// 			if no existing dept/course found, insert departments/courses, get ids
// 		search edition by year, semester, time of day...
// 			if not found, insert edition, get id
// 		insert enrollment
// 		for each topic/skill:
// 			search by id/name, if not exist, insert topics/skills, get ids
// 			search if record exists. 
// 			if not insert coursetopics/courseskills / topicinterests/skillrankings
?>
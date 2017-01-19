function initMain() {
	// Place Stub
}

///////////////////////// Initializations, visual enhancements/animations, client side process functions. /////////////////////////
// Some functions has their functionalities shifted but not renamed.


function addCourse(spinner) {
	var courseContainer = document.getElementById('course-container');
	if (!spinner || !courseContainer) {
		return;
	}
	var meta = spinner.value;
	var courses = courseContainer.children;

	for (var i=0,leni=courses.length;i<leni;i++) {
		if (courses[i].getElementsByClassName('meta')[0].innerHTML==meta) {
			blink(courses[i]);
			return;
		}
	}
	var course = document.createElement("DIV");
	course.classList.add("half-entry");
	course.innerHTML = spinner.options[spinner.selectedIndex].innerHTML+"<span class=meta>"+meta+"</span><span class=entry-cross onclick=\"deleteCourse(this.parentElement)\">&times;</span>";
	courseContainer.appendChild(course);

	spinner.value = "none";
}

function deleteCourse(which) {
	which.parentElement.removeChild(which);
}

function blink(which, color, time) {
	color = color || '#fff297';
	time = time || 1500;
	which.style.backgroundColor = color;
	setTimeout(function(){which.style.removeProperty('background-color')}, time);
}

function addInterest(spinner, container, counter, counter2) {
	var interestContainer = document.getElementById(container);
	if (!spinner || !spinner.previousElementSibling || !interestContainer) {
		return;
	}
	var department = spinner.previousElementSibling;
	if (spinner.value=="none") {
		return;
	}
	if (department.value == "none") {
		blink(spinner.previousElementSibling);
		return;
	}

	var depts = interestContainer.getElementsByClassName('entry-name');
	var targetDept = null;
	for (var i=0,leni=depts.length;i<leni;i++) {
		if (depts[i].nextElementSibling.innerHTML==department.value) {
			var targetDept = depts[i].parentElement;
			var subInterests = targetDept.children[3].children;

			for (var j=0,lenj=subInterests.length;j<lenj;j++) {
				if (subInterests[j].getElementsByClassName('meta')[0].innerHTML == spinner.value) {
					toggleDepartment(targetDept.children[2], 'on');
					blink(subInterests[j]);
					spinner.value='none';
					return;
				}
			}
			break;
		}
	}
	if (!targetDept) {
		targetDept = document.createElement("DIV");
		targetDept.classList.add('entry');
		targetDept.innerHTML = "<span class=entry-name>"+department.options[department.selectedIndex].innerHTML+"</span><span class=meta>"+department.value+"</span><span class=entry-btn onclick=\"toggleDepartment(this)\">+</span><div></div>";
		interestContainer.appendChild(targetDept);
	}

	var targetInterest = document.createElement("DIV");
	targetInterest.classList.add((counter&&counter2)?"entry":"half-entry");
	if (spinner.options[spinner.selectedIndex].innerHTML=="") {
		targetInterest.classList.add('insert');
	}
	targetInterest.innerHTML = spinner.options[spinner.selectedIndex].innerHTML+"<span class=meta>"+spinner.value+"</span><span class=entry-cross onclick=\"deleteInterest(this.parentElement)\">&times;</span>";

	if (counter && counter2) {
		targetInterest.innerHTML+="<div class=\"counter safter\">After <span onclick=\"counter(this)\">+</span><span>3</span><span onclick=\"counter(this)\">-</span></div>\
									<div class=\"counter sbefore\">Before <span onclick=\"counter(this)\">+</span><span>3</span><span onclick=\"counter(this)\">-</span></div>";
	}else if (counter) {
		targetInterest.innerHTML+="<div class=counter><span onclick=\"counter(this)\">+</span><span>3</span><span onclick=\"counter(this)\">-</span></div>";
	}
	
	targetDept.children[3].appendChild(targetInterest);
	setTimeout(function(){blink(targetInterest, '#c1ffb9');}, 10);
	toggleDepartment(targetDept.children[2], 'on');
	spinner.value = "none";
}

function addContributeInterest(container, intr, meta) {
	var children = container.children;
	for (var i=0;i<children.length;i++) {
		if (children[i].getElementsByClassName('intr-name')[0].innerHTML == intr) {
			blink(children[i]);
			return;
		}
	}
	var newInterest = document.createElement("DIV");
	newInterest.classList.add('entry');
	newInterest.innerHTML = "<span class=intr-name>"+intr+"</span><span class=meta>"+meta+"</span><span class=entry-cross onclick=\"deleteCourse(this.parentElement)\">&times;</span>\
								<div class=\"counter safter\">After <span onclick=\"counter(this)\">+</span><span>3</span><span onclick=\"counter(this)\">-</span></div>\
								<div class=\"counter sbefore\">Before <span onclick=\"counter(this)\">+</span><span>3</span><span onclick=\"counter(this)\">-</span></div>";
	container.appendChild(newInterest);
	setTimeout(function(){blink(newInterest, '#c1ffb9');}, 10);
}

function toggleDepartment(which, op) {
	var dept = which.parentElement;
	if (op=='on') {
		dept.style.maxHeight = dept.scrollHeight+5+'px';
		which.innerHTML = "-";
		setTimeout(function() {dept.style.transition="height 0.5s, background-color 0.5s";}, 500);
		setTimeout(function() {dept.style.maxHeight="1500px";}, 510);
		return;
	}
	else if (op=='off') {
		dept.style.maxHeight = dept.scrollHeight+5+'px';
		setTimeout(function() {dept.style.transition="height 0.5s, max-height 0.5s, background-color 0.5s";},10);
		setTimeout(function() {
			dept.style.removeProperty('max-height');
			which.innerHTML = "+";
		},20);
		return;
	}
	if (dept.offsetHeight<=100) {
		
		dept.style.maxHeight = dept.scrollHeight+5+'px';
		which.innerHTML = "-";
		setTimeout(function() {dept.style.transition="height 0.5s, background-color 0.5s";}, 500);
		setTimeout(function() {dept.style.maxHeight="1500px";}, 510);
	}
	else {
		dept.style.maxHeight = dept.scrollHeight+5+'px';
		setTimeout(function() {dept.style.transition="height 0.5s, max-height 0.5s, background-color 0.5s";},10);
		setTimeout(function() {
			dept.style.removeProperty('max-height');
			which.innerHTML = "+";
		},20);
	}
}

function deleteInterest(which) {
	var container = which.parentElement;
	container.removeChild(which);
	if (container.children.length==0) {
		container.parentElement.parentElement.removeChild(container.parentElement);
	}
}

function deptChange (which, mode) {
	ajax(mode+'Spinner.php?dept='+which.value, function(response) {document.getElementById(mode).innerHTML = response});
	which.nextElementSibling.value = "none";
}

function counter (which) {
	if (which.innerHTML == "+") {
		var target = which.nextElementSibling;
		if (parseInt(target.innerHTML)<5) {
			target.innerHTML = parseInt(target.innerHTML)+1;
		}
		
	}else if (which.innerHTML == "-") {
		var target = which.previousElementSibling;
		if (parseInt(target.innerHTML)>1) {
			target.innerHTML = parseInt(target.innerHTML)-1;
		}
	}
}


var contributeCounter = 0;
function addContribute(which, blank) {
	var contributeContainer = document.getElementById('contribute-container');
	var contributes = contributeContainer.children;
	for (var r=0,lenr=contributes.length;r<lenr;r++) {
		if (contributes[r].getElementsByClassName('name')[0].innerHTML==which.value) {
			blink(contributes[r]);
			which.value="none";
			return;
		}
	}
	var entryName = (blank? which.value : which.options[which.selectedIndex].innerHTML).toUpperCase();
	var dept = partCourseName(entryName)[0];
	if (!/^[a-zA-Z]+\d+/.test(entryName)) {
		return;
	}
	//look for dept_code, course_number and set meta, the two spinners, and deactivate deptname
	var newContribute = document.createElement("DIV");
	newContribute.classList.add('entry');
	newContribute.id="contributex-"+contributeCounter;
	var str = "<span class=entry-btn onclick=\"toggleDepartment(this)\">+</span>\
	<span class=name>"+entryName+
		"</span><span class=\"entry-cross\" onclick=\"deleteCourse(this.parentElement)\">×</span>\
		\
		<span class=divider></span>\
		<div class=contribute-detail>\
			<span>Department Name<font color='red'>*</font>: </span><input class='dept-name spinner-s' type=text><br>\
			Course Name: <input class='course-name spinner-s' type=text><br>\
		\
		<span class=divider></span>\
			<span>Year Taken<font color='red'>*</font>: </span><input class='year spinner-s' type=number min=1827 max=9999><br>\
			<span>Semester<font color='red'>*</font>: </span><select class=\"semester spinner-s\">\
				<option value=''></option><option value=f>Fall</option><option value=w>Winter</option><option value=s>Summer</option>\
			</select><br>\
			Estimated # of Students: <input class='num-students spinner-s' type=number min=0><br>\
			<span>Time of Day<font color='red'>*</font>: </span><select class=\"time spinner-s\">\
				<option value=''></option><option value=m>Morning</option><option value=a>Afternoon</option><option value=e>Evening</option>\
			</select><br>\
		\
		<span class=divider></span>\
			Course Grade: <select style=\"margin-left:10px\" class='grade spinner-s'><option value=''></option>";
	for (var k=0;k<grades.length;k++) {
		str+="<option value="+grades[k]+">"+grades[k]+"</option>";
	}
	str+="</select><br>\
			Course Rank: <select style=\"margin-left:19px\" class=\"spinner-s crank\">\
				<option value=''></option><option value=5>5</option><option value=4>4</option><option value=3>3</option><option value=2>2</option><option value=1>1</option>\
			</select><br>\
			Instructor Rank: <select class=\"spinner-s irank\">\
				<option value=''></option><option value=5>5</option><option value=4>4</option><option value=3>3</option><option value=2>2</option><option value=1>1</option>\
			</select><br>\
		\
		<span class=divider></span>\
			<div>+ Area Of Study: "+
				(mapping[dept]? "<select class= 'interests spinner-s' onchange=\"spinnerContributeInput(this)\"></select>":"")+
				"<input type=text class=\"spinner-s iown\" placeholder=\"Write Your Own\">\
				<span class=\"entry-btn add\" onclick=\"contributeInput(this)\">+</span> And Rate Them\
				<div class=interest-container></div>\
			</div>\
		\
		<span class=divider></span>\
			<div>+ Skill Acquired:&nbsp;"+
				(mapping[dept]? "<select class='skills spinner-s' onchange=\"spinnerContributeInput(this)\"></select>":"")+
				"<input type=text class=\"spinner-s sown\" placeholder=\"Write Your Own\">\
				<span class=\"entry-btn add\" onclick=\"contributeInput(this)\">+</span> And Rate Them\
				<div class=skill-container></div>\
			</div>\
		</div>\
		<a id=\"tocontributex-"+contributeCounter+"\" href=\"#contributex-"+contributeCounter+"\" class=\"smoothScroll\"></a>";
		newContribute.innerHTML = str;
	try {
		if (mapping[dept]) {
			ajax('interestsSpinner.php?dept='+dept, function(r) {newContribute.getElementsByClassName('interests')[0].innerHTML = r});
			ajax('skillsSpinner.php?dept='+dept, function(r) {newContribute.getElementsByClassName('skills')[0].innerHTML = r});
			newContribute.getElementsByClassName('dept-name')[0].value = mapping[dept];
			if (mapping[entryName]) {
				newContribute.getElementsByClassName('course-name')[0].value = mapping[entryName][1];
			}
			
		}
		
	}catch(e) {}
	contributeContainer.appendChild(newContribute);
	which.value=(blank? "":"none");
	setTimeout(function(){blink(newContribute, '#c1ffb9');}, 10);
	contributeCounter++;
	toggleDepartment(newContribute.children[0]);
}

function partCourseName(name) {
	var breakPoint = name.indexOf(name.match(/\d/));
	var dept_code = name.slice(0,breakPoint);
	var course_number = name.slice(breakPoint);
	var non_digit = course_number.indexOf(course_number.match(/[^\d]/));
	if (non_digit>=0) {
		course_number = course_number.slice(0, non_digit);
	}
	return [dept_code, course_number];
}

function spinnerContributeInput(add) {
	if (add.value == "none") {
		return;
	}
	var target = add.nextElementSibling.nextElementSibling.nextElementSibling;
	var intr = add.options[add.selectedIndex].innerHTML;

	addContributeInterest(target, intr, add.value);
	add.value = 'none';
}

function contributeInput(add) {
	var which=add.previousElementSibling;
	if (which.value == "") {
		return;
	}

	addContributeInterest(add.nextElementSibling, which.value, '');
	which.value = '';
}



///////////////////////// Client Server Communication functions /////////////////////////
function ajax(url, callback, post, block) {
	if (block==undefined || block ==null) {
		block = true;
	} //Default don't wait.

	if (window.XMLHttpRequest)
        var xmlhttp = new XMLHttpRequest();
    else 
        var xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    
    xmlhttp.onreadystatechange = function() {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
            callback(xmlhttp.responseText);
        }
    };

    if (!post) {
    	xmlhttp.open("GET", url, block);
    	xmlhttp.send();
    }else {
    	xmlhttp.open("POST", url, block);
		xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
		xmlhttp.send(post);
    }
}

function login(response) {
	var un = document.getElementById("un");
	var pw = document.getElementById("pw");

	if (!response) {
		ajax('login.php', login, ("un="+un.value+"&pw="+pw.value).replace("'", "&#39;"));
	}
	else if (response=='true') {
		window.location.href="courses.php";
	}
	else if (response=='false') {
		loginNoti('Username or password incorrect');
		blink(un, '#ffb9b9', 4000);
		blink(pw, '#ffb9b9', 4000);
	}
	else {
		loginNoti('Error encountered. Please try again');
	}
}

var unRegex = /^[a-zA-Z0-9_\-.']*$/i;
// var pwRegex = /^((?=.*\d)(?=.*[a-zA-Z])[a-zA-Z0-9!@#$%&*_\-.,?~`'^]*)$/i;
var pwRegexLite = /^([a-zA-Z0-9!@#$%&*_\-.,?~`'^]*)$/i;

function register(response) {
	var un = document.getElementById("un");
	if (!response) {

		if (un.value.length<1 || un.value.length>20) {
			loginNoti('Username must be 1-20 in length');
			blink(un, '#ffb9b9', 4000);
			return;
		}

		if (!unRegex.test(un.value)) {
			loginNoti('Username can only contain a-z,A-Z.0-9,_\-.\'');
			blink(pw, '#ffb9b9', 4000);
			return;
		}

		var pw = document.getElementById("pw");
		// if (pw.value.length<6 || pw.value.length>40) {
		// 	loginNoti('Password must be 6-40 in length');
		// 	blink(pw, '#ffb9b9', 4000);
		// 	return;
		// }

		if (!pwRegexLite.test(pw.value)) {
			loginNoti('Password can only contain a-z,A-Z.0-9,<br>and !@#$%&*_\-.,?~`\'^', undefined, undefined, '68px');
			blink(pw, '#ffb9b9', 4000);
			return;
		}

		var cpw = document.getElementById("cpw");
		if (cpw.value!=pw.value) {
			loginNoti('Comfirm password does not match');
			blink(cpw, '#ffb9b9', 4000);
			return;
		}

		var age = document.getElementById('age');
		if (age.value!="" && age.value<=0) {
			loginNoti('Invalid age');
			blink(age, '#ffb9b9', 4000);
			return;
		}

		var gender = document.getElementById('gender');
		var cty = document.getElementById('cty');


		ajax('register.php', register, ("un="+un.value+"&pw="+pw.value+"&age="+age.value+"&gender="+gender.value+"&cty="+cty.value).replace("'", "&#39;"));
		return;
	}

	if (response=='true') {
		window.location.href="login.html?reg=true&un="+un.value;
	}
	else {
		loginNoti('Username occupied');
		blink(un, '#ffb9b9', 4000);
	}
}

function loginNoti(text, color, time, height) {
	color = color || '#ffb9b9';
	time = time || 4000;
	height = height || '34px';
	var noti = document.getElementById('noti');

	noti.innerHTML = text;
	noti.style.backgroundColor = color;
	noti.style.height=height;
	setTimeout(function(){noti.style.removeProperty('height')}, time);
}

function initLogin() {
	var queries = window.location.href.split(".html?")[1].split("&");
	var reg=false, un="";
	for (var i=0;i<queries.length;i++) {
		var pair = queries[i].split("=");
		switch (pair[0]){
			case 'reg':
				reg=pair[1];
				break;
			case 'un':
				un=pair[1];
				break;
		}
	}
	if (reg && un != "") {
		document.getElementById('un').value=un;
		setTimeout(function(){loginNoti('Successfully registered', '#c1ffb9');}, 20);
	}
}

function hackLogin() {
	document.getElementById('un').value="mymjack";
	document.getElementById('pw').value="mym";
	login();
}

function logout() {
	ajax('login.php?logout=true', function(){window.location.href="login.html"});
}

function submitCourses(response) {
	var courseContainer = document.getElementById('course-container');
	var courses = courseContainer.children;

	if (!response) {

		var query = "query=CREATE TABLE IF NOT EXISTS taken_courses(username TEXT, course_id INTEGER REFERENCES courses(course_id), CONSTRAINT taken_courses_fkey FOREIGN KEY (username) REFERENCES students(username) MATCH SIMPLE ON UPDATE CASCADE ON DELETE CASCADE);";
		query += "DELETE FROM taken_courses WHERE username = '<><un><>';"
		for (var i=0;i<courses.length;i++) {
			query+="INSERT INTO taken_courses VALUES ('"+'<><un><>'+"', "+courses[i].getElementsByClassName('meta')[0].innerHTML+");";
		}
		console.log(query);
		ajax('modifyQuery.php', submitCourses, query, false);
	}
	else if (parseInt(response) >= courses.length) {
		window.location.href="interests.php";
	}
}

function logResponse(response) {
	console.log(response);
}

function submitInterests(response) {

	if (!response) {
		var query = "query=DELETE FROM interested_in_topics WHERE username = '<><un><>';";
		var depts = document.getElementById('interest-container').children;
		for (var i=0;i<depts.length;i++) {
			var meta = depts[i].getElementsByClassName('meta');
			for (var j=1;j<meta.length;j++) {
				query+="INSERT INTO interested_in_topics VALUES ('"+'<><un><>'+"', '"+meta[0].innerHTML+"', "+meta[j].innerHTML+", "+meta[j].nextElementSibling.nextElementSibling.children[1].innerHTML+");";
			}
		}
		console.log(query);
		ajax('modifyQuery.php', submitInterests, query, false);
	}
	else if (parseInt(response) >= 0) {
		window.location.href="skills.php";
	}
}

function submitSkills(response) {

	if (!response) {

		var query = "query=DELETE FROM user_skills WHERE username = '<><un><>';"
		var depts = document.getElementById('skill-container').children;
		for (var i=0;i<depts.length;i++) {
			var meta = depts[i].getElementsByClassName('meta');
			for (var j=1;j<meta.length;j++) {
				query+="INSERT INTO user_skills VALUES ('"+'<><un><>'+"', '"+meta[0].innerHTML+"', "+meta[j].innerHTML+", "+meta[j].nextElementSibling.nextElementSibling.children[1].innerHTML+");";
			}
		}
		console.log(query);
		ajax('modifyQuery.php', submitSkills, query, false);
	}
	else if (parseInt(response) >= 0) {
		window.location.href="recommend1.php";
	}
}

function reportContribute(one) {
	var entry = {};
	var entryName = one.getElementsByClassName('name')[0].innerHTML;
	var parted = partCourseName(entryName);
	entry['dept_code'] = parted[0];
	entry['course_id'] = mapping[entryName]? mapping[entryName][0]: null;
	entry['course_number'] = parted[1];
	entry['dept_name'] = one.getElementsByClassName('dept-name')[0].value;
	if (!entry['dept_name']) {
		fieldNotfilled(one.getElementsByClassName('dept-name')[0]);
		return;
	}
	entry['course_name'] = one.getElementsByClassName('course-name')[0].value;
	entry['year'] = one.getElementsByClassName('year')[0].value;
	if (!entry['year']) {
		fieldNotfilled(one.getElementsByClassName('year')[0]);
		return;
	}
	entry['semester'] = one.getElementsByClassName('semester')[0].value;
	if (!entry['semester']) {
		fieldNotfilled(one.getElementsByClassName('semester')[0]);
		return;
	}
	entry['num_students'] = one.getElementsByClassName('num-students')[0].value;
	entry['time'] = one.getElementsByClassName('time')[0].value;
	if (!entry['time']) {
		fieldNotfilled(one.getElementsByClassName('time')[0]);
		return;
	}
	entry['grade'] = one.getElementsByClassName('grade')[0].value;
	entry['crank'] = one.getElementsByClassName('crank')[0].value;
	entry['irank'] = one.getElementsByClassName('irank')[0].value;

	entry['interests'] = reportIntrSkill(document.getElementsByClassName('interest-container')[0]);
	entry['skills'] = reportIntrSkill(document.getElementsByClassName('skill-container')[0]);
	return entry;
}

function fieldNotfilled(which) {
	toggleDepartment(which.parentElement.parentElement.children[2], 'on');
	var noti = document.getElementById("noti");
	var a = document.getElementById('scrollHelper');

	document.getElementById('to'+which.parentElement.parentElement.id).click();
	which.parentElement.insertBefore(noti, which.previousElementSibling);
	setTimeout(function(){noti.removeAttribute('style')}, 4000);
	blink(which, '#ffb9b9', 4000);
	noti.style.opacity='1';
}

function reportIntrSkill(container) {
	var entries = container.children;
	var res = {};
	for (var j=0;j<entries.length;j++) {
		res[entries[j].children[0].innerHTML] = [entries[j].children[1].innerHTML, entries[j].children[4].children[1].innerHTML, entries[j].children[3].children[1].innerHTML];
	}
	return res;
}

function submitContribute() {
	var contributes = document.getElementById('contribute-container').children;
	var fullReport = [];
	for (var i=0;i<contributes.length;i++) {
		var temp = reportContribute(contributes[i]);
		if (!temp){
			return;
		}
		fullReport.push(temp);
	}
	// console.log(JSON.stringify(fullReport));
	ajax('contribute.php', function(r){console.log(r);if(r!=""){window.location.href="contribute2.php"}}, 'JSON='+encodeURIComponent(JSON.stringify(fullReport)));
}
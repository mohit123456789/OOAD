<script>
function updateFaculty(rollno)
{
	//alert("im here");
	var xmlhttp;
	if (window.XMLHttpRequest)
	  {// code for IE7+, Firefox, Chrome, Opera, Safari
	  xmlhttp=new XMLHttpRequest();
	  }
	else
	  {// code for IE6, IE5
	  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	  }
	xmlhttp.onreadystatechange=function()
	  {
	  if (xmlhttp.readyState==4 && xmlhttp.status==200)
	    {
			 console.log(xmlhttp.responseText);
		    document.getElementById("maincenter1").innerHTML=xmlhttp.responseText;
		    //event.preventDefault();
		   
	    }
	  }
	xmlhttp.open("POST","SearchFaculty?rollno="+rollno,true);
	xmlhttp.send();
	return true;
	// event.preventDefault();
	//event.preventDefault();
}
function updatethevalue(rollno)
{
	//alert("im here");
	if (rollno.length==0) {
    document.getElementById("maincenter").innerHTML="";
    return;
  }
	var xmlhttp;
	if (window.XMLHttpRequest)
	  {// code for IE7+, Firefox, Chrome, Opera, Safari
	  xmlhttp=new XMLHttpRequest();
	  }
	else
	  {// code for IE6, IE5
	  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	  }
	xmlhttp.onreadystatechange=function()
	  {
	  if (xmlhttp.readyState==4 && xmlhttp.status==200)
	    {
			 console.log(xmlhttp.responseText);
		    document.getElementById("maincenter").innerHTML=xmlhttp.responseText;
		    //event.preventDefault();
		   
	    }
	  }
	xmlhttp.open("POST","SearchFaculty?rollno="+rollno,true);
	xmlhttp.send();
	return true;
	// event.preventDefault();
	//event.preventDefault();
}
function deleteFaculty(rollno)
{
	//alert("im here");
	if (rollno.length==0) {
    document.getElementById("maincenter").innerHTML="";
    return;
  }
	var xmlhttp;
	if (window.XMLHttpRequest)
	  {// code for IE7+, Firefox, Chrome, Opera, Safari
	  xmlhttp=new XMLHttpRequest();
	  }
	else
	  {// code for IE6, IE5
	  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	  }
	xmlhttp.onreadystatechange=function()
	  {
	  if (xmlhttp.readyState==4 && xmlhttp.status==200)
	    {
			console.log(xmlhttp.responseText);
		    document.getElementById("maincenter").innerHTML=xmlhttp.responseText;
		    //event.preventDefault();
		   
	    }
	  }
	xmlhttp.open("POST","DeleteFaculty?rollno="+rollno,true);
	xmlhttp.send();
	return true;
	// event.preventDefault();
	//event.preventDefault();
}
function searchFaculty(sname)
{
	//alert("I,m here 1");
	var xmlhttp;
	if (window.XMLHttpRequest)
	  {// code for IE7+, Firefox, Chrome, Opera, Safari
	  xmlhttp=new XMLHttpRequest();
	  }
	else
	  {// code for IE6, IE5
	  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	  }
	xmlhttp.onreadystatechange=function()
	  {
	  if (xmlhttp.readyState==4 && xmlhttp.status==200)
	    {
			 console.log(xmlhttp.responseText);
		    document.getElementById("maincenter1").innerHTML=xmlhttp.responseText;
		    //event.preventDefault();
		   
	    }
	  }
	
	xmlhttp.open("POST","searchFacultybyname?sname="+sname,true);
	xmlhttp.send();
	// event.preventDefault();
	//event.preventDefault();
}
function showsinglenews(nid,ntitle)
{
	//alert("inside news");
	var xmlhttp;
	if (window.XMLHttpRequest)
	  xmlhttp=new XMLHttpRequest();
	else
	  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	xmlhttp.onreadystatechange=function()
	  {
	  if (xmlhttp.readyState==4 && xmlhttp.status==200)
		    document.getElementById("maincenter").innerHTML=xmlhttp.responseText;
	  };
	  
	xmlhttp.open("GET","./getnews?nid="+nid,true);
	xmlhttp.send();
}
function viewmyprofile()
{
	var xmlhttp;
	if (window.XMLHttpRequest)
	  xmlhttp=new XMLHttpRequest();
	else
	  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");

	xmlhttp.onreadystatechange=function()
	  {
	  if (xmlhttp.readyState==4 && xmlhttp.status==200)
	     document.getElementById("maincenter").innerHTML=xmlhttp.responseText;
	  };
	xmlhttp.open("GET","./getmyprofile",true);
	xmlhttp.send();
}
function loadresetpasswordpage()
{
	$('#maincenter').load('./jsp/resetpassword.jsp');
}
function loaddescriptionpage()
{
	$('#maincenter').load('./jsp/descriptionpage.jsp');
}
function resetpwd()
{
	console.log("entered");
	if(document.resetpassword.confirm_password.value == document.resetpassword.new_password.value)
	{
		var xmlhttp;
		if (window.XMLHttpRequest)
			 xmlhttp=new XMLHttpRequest();
		else
		  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		xmlhttp.onreadystatechange=function()
		  {
		  if (xmlhttp.readyState==4 && xmlhttp.status==200)
		     document.getElementById("maincenter").innerHTML=xmlhttp.responseText;
		  };
		xmlhttp.open("POST","./resetpassword?cp="+document.resetpassword.current_password.value+"&np="+document.resetpassword.new_password.value,true);
		xmlhttp.send();
		//window.alert("Password Updated Successfully");
	}
	else
	{
		window.alert("Password does not match");
		document.resetpassword.current_password.value="";
		document.resetpassword.new_password.value="";
		document.resetpassword.confirm_password.value="";
		document.resetpassword.current_password.focus();
	}
	return false;
}
function searchfriend()
{
	$('#maincenter').load('./jsp/studenthome/searchfriend.jsp');
}
function searchcourses()
{
	$('#maincenter').load('./jsp/studenthome/searchcourses.jsp');
}
function getsearchfriends()
{
	var xmlhttp;
	if (window.XMLHttpRequest)
	  xmlhttp=new XMLHttpRequest();
	else
	  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	xmlhttp.onreadystatechange=function()
	  {
	  	if (xmlhttp.readyState==4 && xmlhttp.status==200)
		    document.getElementById("searchfriendpanelbodytable").innerHTML=xmlhttp.responseText;
	  };
	xmlhttp.open("GET","./getsearchfriends",true);
	xmlhttp.setRequestHeader("friendname",document.searchfriendform.friendname.value);
	xmlhttp.setRequestHeader("friendrollno",document.searchfriendform.friendrollno.value);
	xmlhttp.send();
}
function getsearchcourses()
{
	var xmlhttp;
	if (window.XMLHttpRequest)
	  xmlhttp=new XMLHttpRequest();
	else
	  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	xmlhttp.onreadystatechange=function()
	  {
	  	if (xmlhttp.readyState==4 && xmlhttp.status==200)
		    document.getElementById("searchcoursepanelbodytable").innerHTML=xmlhttp.responseText;
	  };
	xmlhttp.open("GET","./getsearchcourses",true);
	xmlhttp.setRequestHeader("coursecode",document.searchfriendform.coursecode.value);
	xmlhttp.setRequestHeader("coursename",document.searchfriendform.coursename.value);
	xmlhttp.send();
}
function loadfriendprofile()
{
 	 var xmlhttp;
	if (window.XMLHttpRequest)
	  xmlhttp=new XMLHttpRequest();
	else
	  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");

	xmlhttp.onreadystatechange=function()
	  {
	  if (xmlhttp.readyState==4 && xmlhttp.status==200)
	     document.getElementById("friend").innerHTML=xmlhttp.responseText; 
	  };
	var sid=$('input[type="radio"][name="friendsgroup"]:checked').attr('id');
	console.log(sid);
	xmlhttp.open("GET","./getfriendprofile?srollno="+sid,true);
	xmlhttp.send(); 	
}

function addInterestscript(form)
{
	var xmlhttp;
	if (window.XMLHttpRequest)
	  xmlhttp=new XMLHttpRequest();
	else
	  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	xmlhttp.onreadystatechange=function()
	  {
	  if (xmlhttp.readyState==4 && xmlhttp.status==200)
		    document.getElementById("maincenter").innerHTML=xmlhttp.responseText;
	  };
	xmlhttp.open("POST","./addInterest",true);
   var formData = new FormData(form);
	xmlhttp.send(formData);
}
function deleteInterestscript(form)
{
	var xmlhttp;
	if (window.XMLHttpRequest)
	  xmlhttp=new XMLHttpRequest();
	else
	  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	xmlhttp.onreadystatechange=function()
	  {
	  if (xmlhttp.readyState==4 && xmlhttp.status==200)
		    document.getElementById("maincenter").innerHTML=xmlhttp.responseText;
	  };
	xmlhttp.open("POST","./deleteInterest",true);
   var formData = new FormData(form);
	xmlhttp.send(formData);
}


function loadaddInterest()
{
	$('#maincenter').load('./jsp/studenthome/addInterest.jsp');
}
function loadupdateInterest()
{
	$('#maincenter').load('./jsp/studenthome/deleteInterest.jsp');
}




function loadcoursedetail()
{
 	 var xmlhttp;
	if (window.XMLHttpRequest)
	  xmlhttp=new XMLHttpRequest();
	else
	  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");

	xmlhttp.onreadystatechange=function()
	  {
	  if (xmlhttp.readyState==4 && xmlhttp.status==200)
	     document.getElementById("course").innerHTML=xmlhttp.responseText; 
	  };
	var ccode=$('input[name="coursegroup"]:checked').val();
	xmlhttp.open("GET","./getcoursedetails?ccode="+ccode,true);
	xmlhttp.send(); 	
}
function viewmygrades()
{
	var xmlhttp;
	if (window.XMLHttpRequest)
	  xmlhttp=new XMLHttpRequest();
	else
	  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	xmlhttp.onreadystatechange=function()
	  {
	  if (xmlhttp.readyState==4 && xmlhttp.status==200)
		    document.getElementById("maincenter").innerHTML=xmlhttp.responseText;
	  };
	xmlhttp.open("GET","./getmygrades",true);
	xmlhttp.send();
}
function getregisteredcourses()
{
	var xmlhttp;
	if (window.XMLHttpRequest)
	  xmlhttp=new XMLHttpRequest();
	else
	  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	xmlhttp.onreadystatechange=function()
	  {
	  if (xmlhttp.readyState==4 && xmlhttp.status==200)
		    document.getElementById("maincenter").innerHTML=xmlhttp.responseText;
	  };
	xmlhttp.open("GET","./getregisteredcourses",true);
	xmlhttp.send();
}
function loadaddStudent()
{
	$('#maincenter').load('./jsp/admin/student/addStudent.jsp');
}
function loadupdateStudent()
{
	$('#maincenter').load('./jsp/admin/student/search.jsp');
}
function loaddeleteStudent()
{
	$('#maincenter').load('./jsp/admin/student/search.jsp');
}
function loadaddFaculty()
{
	$('#maincenter').load('./jsp/admin/faculty/addFaculty.jsp');
}
function loadupdateFaculty()
{
	$('#maincenter').load('./jsp/admin/faculty/search.jsp');
}
function loadaddNews()
{
	$('#maincenter').load('./jsp/admin/news/addnews.jsp');
}

function loadaddAnnouncement()
{   
	$('#maincenter').load('./jsp/admin/news/announcement.jsp');
} 

function loadupdateNews()
{
	$('#maincenter').load('./jsp/admin/news/updateNews.jsp');
}
function loaddeleteNews()
{
	$('#maincenter').load('./jsp/admin/news/deleteNews.jsp');
}

function loadaddenrollment()
{   
	$('#maincenter').load('./jsp/admin/enrollment/addEnrollment.jsp');
}
function loadupdateEnrollment()
{
	$('#maincenter').load('./jsp/admin/enrollment/search.jsp');
}
function loaddeleteEnrollment()
{
	$('#maincenter').load('./jsp/admin/enrollment/search.jsp');
}

function loadaddAssignment()
{
	$('#maincenter').load('./jsp/admin/assignment/addAssignment.jsp');
}
function loadupdateAssignment()
{
	$('#maincenter').load('./jsp/admin/assignment/search.jsp');
}
function loaddeleteAssignment()
{
	$('#maincenter').load('./jsp/admin/assignment/search.jsp');
}

function myrequests()
{
	$('#maincenter').load('./jsp/studenthome/myrequest.jsp');
}
//courses
function loadaddCourse()
{   
	$('#maincenter').load('./jsp/admin/course/courseAdd.jsp');
}
function loadupdateCourse()
{
	$('#maincenter').load('./jsp/admin/course/courseSearch.jsp');
}
function loaddeleteCourse()
{
	$('#maincenter').load('./jsp/admin/course/courseSearch.jsp');
}

//interests
function loadaddinterest()
{   
	$('#maincenter').load('./jsp/admin/interests/addInterest.jsp');
}

function loaddeleteInterest()
{
	$('#maincenter').load('./jsp/admin/interests/search.jsp');
}

//grading
function loadaddgrading()
{  /* alert("hello");
	 var xmlhttp;
	if (window.XMLHttpRequest)
	  xmlhttp=new XMLHttpRequest();
	else
	  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	xmlhttp.onreadystatechange=function()
	  {
	  if (xmlhttp.readyState==4 && xmlhttp.status==200)
		    document.getElementById("maincenter").innerHTML=xmlhttp.responseText;
	  };
	 xmlhttp.open("POST","submitaction1",true); */
	$('#maincenter').load('./jsp/admin/grading/GradeToStudent.jsp');
	
}

function searchNews(sname)
{
	//alert("im here in search");
	//alert("I,m here 1");
	var xmlhttp;
	if (window.XMLHttpRequest)
	  {// code for IE7+, Firefox, Chrome, Opera, Safari
	  xmlhttp=new XMLHttpRequest();
	  }
	else
	  {// code for IE6, IE5
	  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	  }
	xmlhttp.onreadystatechange=function()
	  {
	  if (xmlhttp.readyState==4 && xmlhttp.status==200)
	    {
			 console.log(xmlhttp.responseText);
		    document.getElementById("maincenter1").innerHTML=xmlhttp.responseText;
		    //event.preventDefault();
		   
	    }
	  }
	
	xmlhttp.open("POST","search?nid="+sname,true);
	xmlhttp.send();
	// event.preventDefault();
	//event.preventDefault();
}

function deleteNews(newsid)
{   
	alert("im here in search in the deleteion");
	alert(newsid);
	var xmlhttp;
	if (window.XMLHttpRequest)
	  {// code for IE7+, Firefox, Chrome, Opera, Safari
	  xmlhttp=new XMLHttpRequest();
	  }
	else
	  {// code for IE6, IE5
	  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	  }
	xmlhttp.onreadystatechange=function()
	  {
	  if (xmlhttp.readyState==4 && xmlhttp.status==200)
	    {
			 console.log(xmlhttp.responseText);
		    document.getElementById("maincenter").innerHTML=xmlhttp.responseText;
		    //event.preventDefault();
		   
	    }
	  }
	
	xmlhttp.open("POST","deleteNews?newsid="+newsid,true);
	xmlhttp.send();
}
function addstudent(form)
{
	var xmlhttp;
	if (window.XMLHttpRequest)
	  xmlhttp=new XMLHttpRequest();
	else
	  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	xmlhttp.onreadystatechange=function()
	  {
	  if (xmlhttp.readyState==4 && xmlhttp.status==200)
		    document.getElementById("maincenter").innerHTML=xmlhttp.responseText;
	  };
	xmlhttp.open("POST","./addStudent",true);
   var formData = new FormData(form);
	xmlhttp.send(formData);
}
function updatestudentscript(form)
{
	var xmlhttp;
	if (window.XMLHttpRequest)
	  xmlhttp=new XMLHttpRequest();
	else
	  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	xmlhttp.onreadystatechange=function()
	  {
	  if (xmlhttp.readyState==4 && xmlhttp.status==200)
		    document.getElementById("maincenter").innerHTML=xmlhttp.responseText;
	  };
	xmlhttp.open("POST","./updateStudent",true);
   var formData = new FormData(form);
	xmlhttp.send(formData);
}
function addassignmentscript(form)
{
	var xmlhttp;
	if (window.XMLHttpRequest)
	  xmlhttp=new XMLHttpRequest();
	else
	  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	xmlhttp.onreadystatechange=function()
	  {
	  if (xmlhttp.readyState==4 && xmlhttp.status==200)
		    document.getElementById("maincenter").innerHTML=xmlhttp.responseText;
	  };
	xmlhttp.open("POST","./addAssignment",true);
   var formData = new FormData(form);
	xmlhttp.send(formData);
}
function updateassignmentscript(form)
{
	var xmlhttp;
	if (window.XMLHttpRequest)
	  xmlhttp=new XMLHttpRequest();
	else
	  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	xmlhttp.onreadystatechange=function()
	  {
	  if (xmlhttp.readyState==4 && xmlhttp.status==200)
		    document.getElementById("maincenter").innerHTML=xmlhttp.responseText;
	  };
	xmlhttp.open("POST","./updateAssignment",true);
   var formData = new FormData(form);
	xmlhttp.send(formData);
}
function addcoursescript(form)
{
	var xmlhttp;
	if (window.XMLHttpRequest)
	  xmlhttp=new XMLHttpRequest();
	else
	  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	xmlhttp.onreadystatechange=function()
	  {
	  if (xmlhttp.readyState==4 && xmlhttp.status==200)
		    document.getElementById("maincenter").innerHTML=xmlhttp.responseText;
	  };
	xmlhttp.open("POST","./courseAddAction",true);
   var formData = new FormData(form);
	xmlhttp.send(formData);
}
function updatecoursescript(form)
{
	var xmlhttp;
	if (window.XMLHttpRequest)
	  xmlhttp=new XMLHttpRequest();
	else
	  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	xmlhttp.onreadystatechange=function()
	  {
	  if (xmlhttp.readyState==4 && xmlhttp.status==200)
		    document.getElementById("maincenter").innerHTML=xmlhttp.responseText;
	  };
	xmlhttp.open("POST","./updelAction",true);
   var formData = new FormData(form);
	xmlhttp.send(formData);
}
function addfacultyscript(form)
{
	var xmlhttp;
	if (window.XMLHttpRequest)
	  xmlhttp=new XMLHttpRequest();
	else
	  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	xmlhttp.onreadystatechange=function()
	  {
	  if (xmlhttp.readyState==4 && xmlhttp.status==200)
		    document.getElementById("maincenter").innerHTML=xmlhttp.responseText;
	  };
	xmlhttp.open("POST","./addFaculty",true);
   var formData = new FormData(form);
	xmlhttp.send(formData);
}
function updatefacultyscript(form)
{
	var xmlhttp;
	if (window.XMLHttpRequest)
	  xmlhttp=new XMLHttpRequest();
	else
	  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	xmlhttp.onreadystatechange=function()
	  {
	  if (xmlhttp.readyState==4 && xmlhttp.status==200)
		    document.getElementById("maincenter").innerHTML=xmlhttp.responseText;
	  };
	xmlhttp.open("POST","./updateFaculty",true);
   var formData = new FormData(form);
	xmlhttp.send(formData);
}

function deleteCourse(ccode)
{
	//alert("im here");
	
	if (ccode.length==0) {
    document.getElementById("maincenter").innerHTML="";
    return;
  }
	var xmlhttp;
	if (window.XMLHttpRequest)
	  {// code for IE7+, Firefox, Chrome, Opera, Safari
	  xmlhttp=new XMLHttpRequest();
	  }
	else
	  {// code for IE6, IE5
	  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	  }
	xmlhttp.onreadystatechange=function()
	  {
	  if (xmlhttp.readyState==4 && xmlhttp.status==200)
	    {
			console.log(xmlhttp.responseText);
		    document.getElementById("maincenter").innerHTML=xmlhttp.responseText;
		    //event.preventDefault();
		   
	    }
	  }
	xmlhttp.open("POST","deleteAction?ccode="+ccode,true);
	xmlhttp.send();
	return true;
	// event.preventDefault();
	//event.preventDefault();
}

function addconfirm(userid)
{
	
	var xmlhttp;
	if (window.XMLHttpRequest)
	  {// code for IE7+, Firefox, Chrome, Opera, Safari
	  xmlhttp=new XMLHttpRequest();
	  }
	else
	  {// code for IE6, IE5
	  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	  }
	xmlhttp.onreadystatechange=function()
	  {
	  if (xmlhttp.readyState==4 && xmlhttp.status==200)
	    {
			 console.log(xmlhttp.responseText);
		     document.getElementById("maincenter").innerHTML=xmlhttp.responseText;
		    //event.preventDefault();
		   
	    }
	  }  
	//alert("im here");
	xmlhttp.open("POST","confirmfriend?userid="+userid,true);
	xmlhttp.send();
	return true;
	// event.preventDefault();
	//event.preventDefault();
}

function addreject(userid)
{
	
	var xmlhttp;
	if (window.XMLHttpRequest)
	  {// code for IE7+, Firefox, Chrome, Opera, Safari
	  xmlhttp=new XMLHttpRequest();
	  }
	else
	  {// code for IE6, IE5
	  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	  }
	xmlhttp.onreadystatechange=function()
	  {
	  if (xmlhttp.readyState==4 && xmlhttp.status==200)
	    {
			 console.log(xmlhttp.responseText);
		     document.getElementById("maincenter").innerHTML=xmlhttp.responseText;
		    //event.preventDefault();
		   
	    }
	  }  
	//alert("im here");
	xmlhttp.open("POST","rejectfriend?userid="+userid,true);
	xmlhttp.send();
	return true;
	// event.preventDefault();
	//event.preventDefault();
}
function submitactionscript(form)
{
	var xmlhttp;
	if (window.XMLHttpRequest)
	  xmlhttp=new XMLHttpRequest();
	else
	  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	xmlhttp.onreadystatechange=function()
	  {
	  if (xmlhttp.readyState==4 && xmlhttp.status==200)
		    document.getElementById("maincenter").innerHTML=xmlhttp.responseText;
	  };
	xmlhttp.open("POST","./submitaction",true);
   var formData = new FormData(form);
	xmlhttp.send(formData);
}

function addtogradescript(form)
{
	var xmlhttp;
	if (window.XMLHttpRequest)
	  xmlhttp=new XMLHttpRequest();
	else
	  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	xmlhttp.onreadystatechange=function()
	  {
	  if (xmlhttp.readyState==4 && xmlhttp.status==200)
		    document.getElementById("maincenter").innerHTML=xmlhttp.responseText;
	  };
	xmlhttp.open("POST","./AddToGrades",true);
   var formData = new FormData(form);
	xmlhttp.send(formData);
}

function findgradescript(form)
{
	var xmlhttp;
	if (window.XMLHttpRequest)
	  xmlhttp=new XMLHttpRequest();
	else
	  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	xmlhttp.onreadystatechange=function()
	  {
	  if (xmlhttp.readyState==4 && xmlhttp.status==200)
		    document.getElementById("maincenter").innerHTML=xmlhttp.responseText;
	  };
	xmlhttp.open("POST","./SubmitGrade",true);
   var formData = new FormData(form);
	xmlhttp.send(formData);
}
function updatenewsscript(form)
{
	var xmlhttp;
	if (window.XMLHttpRequest)
	  xmlhttp=new XMLHttpRequest();
	else
	  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	xmlhttp.onreadystatechange=function()
	  {
	  if (xmlhttp.readyState==4 && xmlhttp.status==200)
		    document.getElementById("maincenter").innerHTML=xmlhttp.responseText;
	  };
	xmlhttp.open("POST","./search",true);
   var formData = new FormData(form);
	xmlhttp.send(formData);
}
function updatenewsjsp(form)
{
	var xmlhttp;
	if (window.XMLHttpRequest)
	  xmlhttp=new XMLHttpRequest();
	else
	  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	xmlhttp.onreadystatechange=function()
	  {
	  if (xmlhttp.readyState==4 && xmlhttp.status==200)
		    document.getElementById("maincenter").innerHTML=xmlhttp.responseText;
	  };
	xmlhttp.open("POST","./updateNews",true);
   var formData = new FormData(form);
	xmlhttp.send(formData);	
}
	function addnewsscript(form) 
	{
		var xmlhttp;
		if (window.XMLHttpRequest)
			xmlhttp = new XMLHttpRequest();
		else
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		xmlhttp.onreadystatechange = function()
		{
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200)
				document.getElementById("maincenter").innerHTML = xmlhttp.responseText;
		};
		xmlhttp.open("POST", "./addNews", true);
		var formData = new FormData(form);
		xmlhttp.send(formData);
		
	}
	
	function addAnnouncementscript(form) {
		var xmlhttp;
		if (window.XMLHttpRequest)
			xmlhttp = new XMLHttpRequest();
		else
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200)
				document.getElementById("maincenter").innerHTML = xmlhttp.responseText;
		};
		xmlhttp.open("POST", "./addAnnouncement", true);
		var formData = new FormData(form);
		xmlhttp.send(formData);
	}
	
	function updateEnrollmentScript(form)
	{
		var xmlhttp;
		//alert("i nou");
		if (window.XMLHttpRequest)
		  xmlhttp=new XMLHttpRequest();
		else
		  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		xmlhttp.onreadystatechange=function()
		  {
		  if (xmlhttp.readyState==4 && xmlhttp.status==200)
			    document.getElementById("maincenter").innerHTML=xmlhttp.responseText;
		  };
		xmlhttp.open("POST","./updateEnrollment",true);
	   var formData = new FormData(form);
		xmlhttp.send(formData);
		
	}
	
	function addEnrollmentscript(form)
	{
		var xmlhttp;
		if (window.XMLHttpRequest)
		  xmlhttp=new XMLHttpRequest();
		else
		  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		xmlhttp.onreadystatechange=function()
		  {
		  if (xmlhttp.readyState==4 && xmlhttp.status==200)
			    document.getElementById("maincenter").innerHTML=xmlhttp.responseText;
		  };
		xmlhttp.open("POST","./addEnrollment",true);
	   var formData = new FormData(form);
		xmlhttp.send(formData);
	}
	function ajaxCourses(cname)
	{
		//alert("im here");
		
		var xmlhttp;
		if (window.XMLHttpRequest)
		  {// code for IE7+, Firefox, Chrome, Opera, Safari
		  xmlhttp=new XMLHttpRequest();
		  }
		else
		  {// code for IE6, IE5
		  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		  }
		xmlhttp.onreadystatechange=function()
		  {
		  if (xmlhttp.readyState==4 && xmlhttp.status==200)
		    {
				 console.log(xmlhttp.responseText);
			    document.getElementById("show").innerHTML=xmlhttp.responseText;
			    //event.preventDefault();
			   
		    }
		  };
		xmlhttp.open("POST","showCourses1?cname="+cname,true);
		xmlhttp.send();
		return true;
		// event.preventDefault();
		//event.preventDefault();
	}
	function addtomyfriendslist(friendid)
	{
		var xmlhttp;
		if (window.XMLHttpRequest)
		  {// code for IE7+, Firefox, Chrome, Opera, Safari
		  xmlhttp=new XMLHttpRequest();
		  }
		else
		  {// code for IE6, IE5
		  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		  }
		xmlhttp.onreadystatechange=function()
		  {
		  if (xmlhttp.readyState==4 && xmlhttp.status==200)
		    {
				 console.log(xmlhttp.responseText);
			    document.getElementById("searchfriendpanelbodytable").innerHTML=xmlhttp.responseText;
			    //event.preventDefault();
			   
		    }
		  }
		xmlhttp.open("POST","addfriend?friendid="+friendid,true);
		xmlhttp.send();
		return true;		
	}
	
	function removetomyfriendslist(friendid)
	{
		var xmlhttp;
		if (window.XMLHttpRequest)
		  {// code for IE7+, Firefox, Chrome, Opera, Safari
		  xmlhttp=new XMLHttpRequest();
		  }
		else
		  {// code for IE6, IE5
		  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		  }
		xmlhttp.onreadystatechange=function()
		  {
		  if (xmlhttp.readyState==4 && xmlhttp.status==200)
		    {
				 console.log(xmlhttp.responseText);
			    document.getElementById("maincenter").innerHTML=xmlhttp.responseText;
			    //event.preventDefault();
			   
		    }
		  }
		xmlhttp.open("POST","removefriend?friendid="+friendid,true);
		xmlhttp.send();
		return true;		
	}
	
	
	function myfriends()
	{
		var xmlhttp;
		if (window.XMLHttpRequest)
		  xmlhttp=new XMLHttpRequest();
		else
		  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		xmlhttp.onreadystatechange=function()
		  {
		  	if (xmlhttp.readyState==4 && xmlhttp.status==200)
			    document.getElementById("maincenter").innerHTML=xmlhttp.responseText;
		  };
		xmlhttp.open("GET","./getmyfriends",true);
		xmlhttp.send();		
	}

	function loadmyfriendprofile()
	{
	 	 var xmlhttp;
		if (window.XMLHttpRequest)
		  xmlhttp=new XMLHttpRequest();
		else
		  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");

		xmlhttp.onreadystatechange=function()
		  {
		  if (xmlhttp.readyState==4 && xmlhttp.status==200)
		     document.getElementById("myfriendprofile").innerHTML=xmlhttp.responseText; 
		  };
		var sid=$('input[type="radio"][name="friendsgroup"]:checked').attr('id');
		console.log(sid);
		xmlhttp.open("GET","./getmyfriendprofile?srollno="+sid,true);
		xmlhttp.send(); 	
	}
	function showsingleannouncement(aid,atitle)
	{
		//alert("inside news");
		var xmlhttp;
		if (window.XMLHttpRequest)
		  xmlhttp=new XMLHttpRequest();
		else
		  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		xmlhttp.onreadystatechange=function()
		  {
		  if (xmlhttp.readyState==4 && xmlhttp.status==200)
			    document.getElementById("maincenter").innerHTML=xmlhttp.responseText;
		  };
		  
		xmlhttp.open("GET","./getannouncement?aid="+aid,true);
		xmlhttp.send();
	}

	function addinterestadmin(form)
	{
		var xmlhttp;
		if (window.XMLHttpRequest)
		  xmlhttp=new XMLHttpRequest();
		else
		  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		xmlhttp.onreadystatechange=function()
		  {
		  if (xmlhttp.readyState==4 && xmlhttp.status==200)
			    document.getElementById("maincenter").innerHTML=xmlhttp.responseText;
		  };
		xmlhttp.open("POST","./addInterestadmin",true);
	   var formData = new FormData(form);
		xmlhttp.send(formData);
	}
</script>

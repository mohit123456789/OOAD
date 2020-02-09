<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.iiitb.sis.util.ConnectionPool" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.ArrayList" %>
<%@include file="./ajaxscripts.jsp" %>
	
	<%! ConnectionPool data = new ConnectionPool();
		PreparedStatement ps;
		ArrayList<String> cname=new ArrayList<String>();
		ArrayList<String> fname=new ArrayList<String>();
		//ArrayList<String> semname=new ArrayList<String>();
		int i;
	%>
	<%
		Connection conn = data.getConnection();	
		ps=conn.prepareStatement("select cname from courses");
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
			cname.add(rs.getString(1));
		}
		ps=conn.prepareStatement("select fname from faculty");
		rs=ps.executeQuery();
		while(rs.next())
		{
			fname.add(rs.getString(1));
		}
		/* ps=conn.prepareStatement("select semname from sem_master");
		rs=ps.executeQuery();
		while(rs.next())
		{
			semname.add(rs.getString(1));
		} */
		ps.close();
		rs.close();
		data.freeConnection(conn);
	%>
		<!-- Container for the entire page -->
		<div class="panel panel-primary">
		
			<!-- Screen heading -->
			<div class="panel-heading" align="center"><h3>Assign Faculty to Courses</h3></div>
			<div class="panel-body" align="center">
					
					<!-- Input form -->
					<form class="form-horizontal" method="post" enctype="multipart/form-data" name="myform" id="myform">
						<fieldset>
						
							<!-- 0th row of form -->
							
							<div class="row">
								<!-- 2nd column of 1st row -->
								<div class="col-lg-5" align="right">
									<b>Faculty Name:</b>
								</div>
								<div class="col-lg-1"></div>
								<div class="col-lg-4" align="left">
									<select class="form-control" name="fname" onchange="ajaxCourses(this.value)" placeholder="Faculty Name" id="fname" required>
										<option value="default" selected>Select below</option>
										<%
										for(i=0;i<fname.size();i++)
											{%><option value="<%=fname.get(i) %>"><%=fname.get(i) %></option>
											<%
											}%>
											<%fname.clear(); %>
									</select>
								</div>
							</div>
							
							<br>
								<!-- 2nd column of 0th row -->
													
							<div class="row">
								<!-- 1st column of 1st row -->
								<div class="col-lg-5" align="right">
									<b>Course Name (Multi-select):</b>
								</div>
								<div class="col-lg-1"></div>
								<div class="col-lg-4" id="show" align="left">
									<select class="form-control" multiple="multiple" name="cname" placeholder="Course Name" id="cname" required>
										<%
										for(i=0;i<cname.size();i++)
											{%><option value="<%=cname.get(i) %>"><%=cname.get(i) %></option>
											<%
											}%>
											<%cname.clear();  %>
									</select>
								</div>
							</div>
							
							<br>
							<!-- 0th row ends here -->
						
							<!-- 1st row of form -->
							<%-- <div class="row">						
								<!-- 1st column of 0th row -->
								<div class="col-lg-5" align="right">
									<b>Semester:</b>
								</div>
								<div class="col-lg-1"></div>
								<div class="col-lg-4" align="left">
									<select class="form-control" name="semname" placeholder="Semester Name" id="semname" required>
										<%
										for(i=0;i<semname.size();i++)
											{%><option value="<%=semname.get(i) %>"><%=semname.get(i) %></option>
											<%
											}%>
											<%
											semname.clear();  
											%>
									</select>
								</div>
							</div>	 --%>
														
							<!-- 5th row of form -->
							<br>
							<br>
							
							<div class="row" align="center">
								<div class="col-lg-12" >
									<input id="submit" type="button" class="btn btn-primary" value="Submit" onclick="addassignmentscript(this.form)">
								</div>
							</div>
							<!-- 5th row ends here -->
							<%! String msg; %>
							   <% msg=response.getHeader("msg");
					           if(msg!=null)
					           {%>
						 			<div class="col-lg-12 form-group" >
						 				<h2 align="center" class="label label-success"><%=msg %></h2>
						 			</div>
						 	<%}
						 	%>
							
						</fieldset>			
					</form>
				</div>
			</div>

		<script type="text/javascript">
			
			/*  $("#myform").on('submit',function(e)
			 {
					var cname = document.forms["myform"]["cname"].value;
					var fname = document.forms["myform"]["fname"].value;
					var semname = document.forms["myform"]["semname"].value;
				   
				    if (cname==null || cname==""){
				        alert("Course Name must be filled out"); return false;}
				    else if (fname==null || fname==""){
				        alert("Faculty Name must be filled out"); return false;}
				    else if (semname==null || semname==""){
				    	alert("Semester must be filled out"); return false;}
				    
			     var formData = new FormData(this);
			     $.ajax({
			         url: 'addAssignment',
			     type: 'POST',
			         data:  formData,
			     mimeType:"multipart/form-data",
			     contentType: false,
			         cache: false,
			         processData:false,
			     success: function(data, textStatus, jqXHR)
			     {
			  		//alert('added successfully');
			    	 document.getElementById("maincenter").innerHTML=jqXHR.responseText;
			     },
			      error: function(jqXHR, textStatus, errorThrown) 
			      {
				    	 document.getElementById("maincenter").innerHTML=jqXHR.responseText;
			      }          
			     });
			     e.preventDefault(); //Prevent Default action. 
			     $("#myform").unbind(e);
			     $("#myform").submit(); //Submit the form
			     
			 });  */
		</script>

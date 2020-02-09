package org.iiitb.sis.studenthome.action;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;




import org.apache.struts2.ServletActionContext;
import org.iiitb.sis.util.ConnectionPool;

public class addInterest {
	Connection con;
	
	int i=0;
	String query1 = "select InterestID from interest_master where InterestName=?";
	String query2 = "insert into student_interest(sid,InterestID) values(?,?)";
	private ArrayList<String> Iname=new ArrayList<String>();
	/*public String[] getIname() {
		//System.out.println("here-->n");
		
    	HttpServletRequest request=ServletActionContext.getRequest();
    	String Iname[] = request.getParameterValues("Iname");
    	
    	return Iname;
	}*/
	public String add()
	{
		
		PreparedStatement pstmt=null;
		PreparedStatement ps=null;
		try
		{
			con=ConnectionPool.getConnection();
			for(i=0;i<getIname().size();i++)
			{			

				pstmt = con.prepareStatement(query1);
				pstmt.setString(1,Iname.get(i));
				System.out.println(Iname.get(i));
				ResultSet rs = pstmt.executeQuery();
				System.out.println(Iname.get(i));
				while(rs.next())
				{
					System.out.println(Iname.get(i));
					ps = con.prepareStatement(query2);
					int sid=Integer.parseInt(ServletActionContext.getRequest().getSession().getAttribute("userid").toString());
					ps.setInt(1,sid);
					ps.setString(2,rs.getString(1));
					ps.execute();
					System.out.println("dfdg");
				}
			
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		    ConnectionPool.freeConnection(con);
		    return "error";
		}
		ServletActionContext.getResponse().addHeader("msg", "Interest has been added successfully");
	    	
		return "success";
	}
	/**
	 * @return the iname
	 */
	public List<String> getIname() {
		return Iname;
	}
	/**
	 * @param iname the iname to set
	 */
	public void setIname(String i) {
		Iname.add(i);
	}
	

	

}

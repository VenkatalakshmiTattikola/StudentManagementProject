package test;
import java.sql.*;
public class StudentLoginDAO 
{
public StudentBean sb=null;
public StudentBean login(String Rno) {

	try {
		Connection con=DBConnection.getCon();
		PreparedStatement ps1=con.prepareStatement("select * from Student7  where rollno=?");
		ps1.setString(1,Rno);
		ResultSet rs=ps1.executeQuery();
		if(rs.next()) {
			sb=new StudentBean();
			sb.setRollNo(rs.getString(1));
			sb.setName(rs.getString(2));
			sb.setCourse(rs.getString(3));
			sb.setTotMarks(rs.getInt(4));
			sb.setPer(rs.getFloat(5));
			sb.setResult(rs.getString(6));
			//sb.setMk(rs.g);
		}
		
	}catch(Exception e) 
	{
	e.printStackTrace();	
	}
	return sb;

}
}
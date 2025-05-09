package test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Types;

public class ViewStudentDetailsDAO {

	public StudentBean retriveStudent(String roll)
	{
		StudentBean sb=null;
		System.out.println("DAO:"+roll);
		try
		{
			Connection con=DBConnection.getCon();
			PreparedStatement ps=con.prepareStatement("select * from student7 where rollno=?");
			PreparedStatement ps1=con.prepareStatement("select * from Marks7 ");
			
			
			ps.setString(1, roll);
			ResultSet rs = ps.executeQuery();
			ResultSet rs1 = ps1.executeQuery();
			if(rs.next()&&rs1.next())
			{
			System.out.println("Roll: "+rs.getString(1));
			
				sb=new StudentBean();
				sb.setName(rs.getString(2));
				sb.setCourse(rs.getString(3));
				sb.setTotMarks(rs.getInt(4));
				sb.setPer(rs.getFloat(5));
				sb.setResult(rs.getString(6));
				sb.getMk().setCoreJava(rs1.getInt(2));
				sb.getMk().setAdvJava(rs1.getInt(3));
				sb.getMk().setUi(rs1.getInt(4));
				sb.getMk().setDb(rs1.getInt(5));
				sb.getMk().setTools(rs1.getInt(6));
				
				
			}
			
			else
			{
				
				
				System.out.println("ViewDetailsDAO.retriveStudent() else");
			}

			
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		System.out.println(sb);
		return sb;
		
	}
}

package database;
import java.sql.*;

public class dbcon {

	public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("driver loaded succesfully");
			Connection con;
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","manager");
			System.out.println("driver connection stage completed");
			System.out.println("control forwarded to statement block");
			Statement stmt;
			stmt = con.createStatement();
			System.out.println("statement creation stage completed");
			System.out.println("control forwarded to resultset block");
			ResultSet rs;
			rs = stmt.executeQuery("insert into student values(1,'sony')");
			System.out.println("recorded inserted succesfully");
			rs = stmt.executeQuery("select * from student");
			System.out.println("table fetched succesfully");
			while(rs.next()){
				System.out.println(rs.getInt(1)+" "+rs.getString(2));
				con.close();
			}
		}
			catch(Exception e) {
				System.out.println(e);
			}
		}

}

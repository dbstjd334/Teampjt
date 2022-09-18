package jdbcConnect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MemberDbDTO {


	public static Statement memberDto() {
		Connection conn = null;
		Statement stmt = null;

		String url = "jdbc:mariadb://172.30.1.37:3306/db01";
		String id = "root";
		String pw = "1234";

		try {
			Class.forName("org.mariadb.jdbc.Driver");
			conn = DriverManager.getConnection(url, id, pw);
			stmt = conn.createStatement();
		} catch (ClassNotFoundException e) {
			System.out.println( "드라이버가 없습니다" );
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("접속 정보 및 SQL 문제 발생.");
			e.printStackTrace();         
		}

		return stmt ;
	}

	public static void memberList(ResultSet rs) {
		System.out.println("id\tname\tage\t ");
		System.out.println("---------------------------");
		try {
			while(rs.next()) {

				System.out.print(rs.getString(1) + "\t");//컬럼명

				System.out.print(rs.getString(2) + "\t");//컬럼명

				System.out.print(rs.getString(3) + "\n");//컬럼명
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}


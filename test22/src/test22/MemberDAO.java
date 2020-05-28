package test22;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class MemberDAO {

	private DBConnectionMgr pool;
	
	public MemberDAO() {
		try {
			pool = DBConnectionMgr.getInstance();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public boolean Insert(MemberBean bean) {
		Connection con = null;
		PreparedStatement stmt = null;
		boolean check = false;
		try {
			con = pool.getConnection();
			String sql = "insert into MEMBER10 values(?,?,?,?,?,?,?)";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, bean.getId());
			stmt.setString(2, bean.getPw());
			stmt.setString(3, bean.getName());
			stmt.setString(4, bean.getEmail());
			stmt.setString(5, bean.getJob());
			String hobby[] = bean.getHobby();
			char hb[] = {'0','0','0','0','0','0'};
			String lists[] = {"낚시","축구","독서","영화","게임","산책"};
			for(int i=0;i<hobby.length;i++) {
				for(int j=0;j<lists.length;j++) {
					if(hobby[i].equals(lists[j]))
						hb[j]='1';
				}
			}
			stmt.setString(6, new String(hb));
			stmt.setString(7, bean.getAddress());
			if(stmt.executeUpdate()==1)
				check = true;
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			pool.freeConnection(con,stmt);
		}
		return check;
	}
	public boolean IDcheck(String id) {
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		boolean check = false;
		
		try {
			con = pool.getConnection();
			String sql = "select id from MEMBER10 where id = ?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, id);
			rs = stmt.executeQuery();
			if(rs.next())
				check = true;
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			pool.freeConnection(con,stmt,rs);
		}
		
		return check;
	}
}

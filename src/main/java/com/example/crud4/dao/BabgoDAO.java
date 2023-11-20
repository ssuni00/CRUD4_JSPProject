package com.example.crud4.dao;
import com.example.crud4.bean.BabgoVO;
import com.example.crud4.util.MariaDBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class BabgoDAO {

    Connection conn = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;

    private final String Babgo_INSERT = "insert into Babgo (BabgoName, BabgoDate, BabgoTime, Description) values (?,?,?,?)";
    private final String Babgo_UPDATE = "update Babgo set BabgoName=?, BabgoDate=? ,BabgoTime=?, Description=? where BabgoID=? ";
    private final String Babgo_DELETE = "delete from Babgo where BabgoID=?";
    private final String Babgo_GET = "select * from Babgo where BabgoID=?";
    private final String Babgo_LIST ="select * from Babgo order by BabgoID desc";



    public int insertBabgo(BabgoVO vo) {
        System.out.println("insertBabgo() 기능 처리");
        try {
            conn = MariaDBUtil.getConnection();
            stmt = conn.prepareStatement(Babgo_INSERT);
            stmt.setString(1, vo.getBabgoName());
            stmt.setString(2, vo.getBabgoDate());
            stmt.setString(3, vo.getBabgoTime());
            stmt.setString(4, vo.getDescription());

            System.out.println(vo.getBabgoName() + "-" + vo.getBabgoDate() + "-" + vo.getBabgoTime() + "-" + vo.getBabgoDescription());

            stmt.executeUpdate();
            return 1;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    public int updateBabgo(BabgoVO vo) {
        System.out.println("Babgo_UPDATE() 기능 처리");
        try {
            conn = MariaDBUtil.getConnection();
            stmt = conn.prepareStatement(Babgo_UPDATE);
            stmt.setString(1, vo.getBabgoName());
            stmt.setString(2, vo.getBabgoDate());
            stmt.setString(3, vo.getBabgoTime());
            stmt.setString(4, vo.getDescription());
            stmt.setInt(5, vo.getBabgoID());

            System.out.println(vo.getBabgoName() + "-" + vo.getBabgoDate() + "-" + vo.getBabgoTime() + "-" + vo.getBabgoDescription());
            stmt.executeUpdate();
            return 1;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }
    public int deleteBabgo(BabgoVO vo) {
        System.out.println("Babgo_DELETE() 기능 처리");
        try {
            conn = MariaDBUtil.getConnection();
            stmt = conn.prepareStatement(Babgo_DELETE);
            stmt.setInt(1, vo.getBabgoID());
            stmt.executeUpdate();
            return 1;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    public BabgoVO getBabgo(int BabgoID) {
        BabgoVO one = new BabgoVO();
        System.out.println("getBabgo 기능 처리");
        try {
            conn = MariaDBUtil.getConnection();
            stmt = conn.prepareStatement(Babgo_GET);
            stmt.setInt(1, BabgoID);
            rs = stmt.executeQuery();
            if (rs.next()) {
                one.setBabgoID(rs.getInt("BabgoID"));
                one.setBabgoName(rs.getString("BabgoName"));
                one.setBabgoDate(rs.getString("BabgoDate"));
                one.setBabgoTime(rs.getString("BabgoTime"));
                one.setDescription(rs.getString("Description"));
            }
            rs.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return one;
    }
    public List<BabgoVO> getBabgoList() {
        List<BabgoVO> list = new ArrayList<BabgoVO>();
        System.out.println("getBabgoList() 기능 처리");
        try {
            conn = MariaDBUtil.getConnection();
            stmt = conn.prepareStatement(Babgo_LIST);
            rs = stmt.executeQuery();
            while(rs.next()){
                BabgoVO one = new BabgoVO();
                one.setBabgoID(rs.getInt("BabgoID"));
                one.setBabgoName(rs.getString("BabgoName"));
                one.setBabgoDate(rs.getString("BabgoDate"));
                one.setBabgoTime(rs.getString("BabgoTime"));
                one.setDescription(rs.getString("Description"));
                one.setRegdate(rs.getDate("regdate"));
                list.add(one);
            }
            rs.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}

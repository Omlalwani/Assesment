package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.model.UserModel;
import com.util.DBUtil;

public class AdminDao 
{
	Connection cn = null;
	public int register(UserModel registerModel) {
		int x = 0;
		cn = new DBUtil().getConnection();
		String qry = "insert into user(firstname, lastname, mobile, address, gender, email, password, confirm) values(?,?,?,?,?,?,?,?)";
		try {
			PreparedStatement st = cn.prepareStatement(qry);
			st.setString(1, registerModel.getFirstname());
			st.setString(2, registerModel.getLastname());
			st.setString(3, registerModel.getMobile());
			st.setString(4, registerModel.getAddress());
			st.setString(5, registerModel.getGender());
			st.setString(6, registerModel.getEmail());
			st.setString(7, registerModel.getPassword());
			st.setString(8, registerModel.getConfirm());
			
			x = st.executeUpdate();
			cn.close();
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return x;
	}
	
	public UserModel login(UserModel loginModel) {
		UserModel model = null;
		cn = new DBUtil().getConnection();
		String qry = "select * from user where email=? and password=?";
		try {
			PreparedStatement st = cn.prepareStatement(qry);
			st.setString(1, loginModel.getEmail());
			st.setString(2, loginModel.getPassword());
			
			ResultSet rs = st.executeQuery();
			if(rs.next()) {
				model = new UserModel();
				model.setUserid(rs.getInt(1));
				model.setFirstname(rs.getString("firstname"));
				model.setLastname(rs.getString("lastname"));
				model.setMobile(rs.getString("mobile"));
				model.setAddress(rs.getString("address"));
				model.setGender(rs.getString("gender"));
				model.setEmail(rs.getString("email"));
				model.setPassword(rs.getString("password"));
				model.setConfirm(rs.getString("confirm"));
			}
			
			cn.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return model;
	}
}

package com.asset.dao;

import com.asset.model.*;

public interface UserDao {
	public String authenticateUser(LoginBean loginBean);
	public String addUser(AddUserBean adduserBean);
	public String addAsset(AddAssetBean addassetBean);
	public String addLocation(VenderBean venderBean);
}

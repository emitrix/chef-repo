#
# Cookbook Name:: users
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

search(:users, "*.*").each do |user_data|
    user user_data ["id"] do 
        uid user_data["uid"]
        gid user_data["gid"]
        comment user_data["comment"]
        home user_data["home"]
        shell user_data["shell"]
        supports  :manage_home => true
    end
end

include_recipe "users::groups"
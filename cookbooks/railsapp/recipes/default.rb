#
# Cookbook Name:: railsapp
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'apt'
include_recipe 'locale'
include_recipe 'nginx'
include_recipe 'mongodb::10gen_repo'
include_recipe 'mongodb::default'
include_recipe 'redisio::default'
include_recipe 'redisio::enable'
include_recipe 'rvm::user'
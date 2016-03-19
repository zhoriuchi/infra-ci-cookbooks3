#
# Cookbook Name:: base_package
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
%w{
   dstat
   git
   tmux
   vim-enhanced
   yum-plugin-versionlock
   zsh
}.each do |pkg|
   package pkg do
      action :install
   end
end

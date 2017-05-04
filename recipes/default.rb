#
# Cookbook Name:: shadowsocks
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package 'python'
package 'python-pip'

execute "install shadowsocks" do
  command "pip install shadowsocks"
  not_if "which ssserver"
end


template '/etc/shadowsocks.json' do
  source 'shadowsocks.json.erb'
  mode '0440'
  owner 'root'
  group 'root'
end

poise_service 'ssserver' do
  command 'ssserver -c /etc/shadowsocks.json'
  stop_signal 'SIGQUIT'
end

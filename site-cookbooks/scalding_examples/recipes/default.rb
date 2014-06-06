#
# Cookbook Name:: scalding_exsamples
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute

include_recipe "maven"
include_recipe "git"

bash "install_scalding_examples" do
	user "root"
    cwd "/tmp"
    code <<-EOH
    export PATH=#{node[:maven][:m2_home]}:$PATH
    git clone https://github.com/niw/scalding_examples.git #{node[:scalding_examples][:install_path]}
	cd #{node[:scalding_examples][:install_path]}
	mvn clean package
	EOH
end

template "/etc/profile.d/scalding_exsamples_env.sh" do
    mode 0755
    source "scalding_exsamples_env.sh.erb"
    variables(:scalding_exsamples_scripts_path => node[:scalding_examples][:install_path] + "/src/main/scripts")
end



#
# Cookbook:: choco-prog
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

chocolatey_package 'chocolatey' do
    #    action :install
        action :upgrade
    end

chocolatey_package 'gow' do
#    action :install
    action :upgrade
end

package_array = ['python', 'pycharm-community', 'pip', 'ruby', 'eclipse', 'visualstudio2017community', 'git', 'github', 'vim', 'visualstudiocode', 'poshgit', 'packer', 'docker-for-windows', 'docker-compose', 'minikube', 'minishift', 'vscode-docker', 'atom', 'sublimetext3', 'jivkok.sublimetext3.packages']
 
package_array.each do |this_package|
    chocolatey_package this_package do
        action :upgrade
        ignore_failure true
    end
end

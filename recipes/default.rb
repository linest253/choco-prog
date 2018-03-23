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

package_array = ['python', 'pycharm-community', 'pip', 'ruby', 'eclipse', 'visualstudio2017community', 'git', 'github']
 
package_array.each do |this_package|
    chocolatey_package this_package do
        action :upgrade
        ignore_failure true
    end
end

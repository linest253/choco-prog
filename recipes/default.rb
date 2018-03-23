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

chocolatey_package 'python' do
    action :upgrade
    ignore_failure true
end

chocolatey_package 'pycharm-community' do
    action :upgrade
    ignore_failure true
end

chocolatey_package 'pip' do
    action :upgrade
    ignore_failure true
end

chocolatey_package 'ruby' do
    action :upgrade
    ignore_failure true
end

chocolatey_package 'eclipse' do
    action :upgrade
    ignore_failure true
end

chocolatey_package 'visualstudio2015community' do
    action :upgrade
    ignore_failure true
end

chocolatey_package 'git' do
    action :upgrade
    ignore_failure true
end

chocolatey_package 'github' do
    action :upgrade
    ignore_failure true
end

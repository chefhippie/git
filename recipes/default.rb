#
# Cookbook Name:: git
# Recipe:: default
#
# Copyright 2013, Thomas Boerger
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe "build"

node["git"]["packages"].each do |name|
  package name do
    action :install
  end
end

execute "git_install_flow" do
  command "wget --no-check-certificate -q -O - https://raw.github.com/nvie/gitflow/develop/contrib/gitflow-installer.sh | bash"

  not_if do
    ::File.exists? "/usr/local/bin/git-flow"
  end
end

#
# Cookbook Name:: git
# Attributes:: default
#
# Copyright 2013-2014, Thomas Boerger <thomas@webhippie.de>
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

default["git"]["packages"] = %w(
  git-core
)

default["git"]["zypper"]["enabled"] = true
default["git"]["zypper"]["alias"] = "devel-tools-scm"
default["git"]["zypper"]["title"] = "Software Configuration Management"
default["git"]["zypper"]["repo"] = "http://download.opensuse.org/repositories/devel:/tools:/scm/openSUSE_#{node["platform_version"]}/"
default["git"]["zypper"]["key"] = "#{node["git"]["zypper"]["repo"]}repodata/repomd.xml.key"

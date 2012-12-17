#
# Author:: Becky Sweger
# Cookbook Name:: python-data
# Recipe:: default
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

include_recipe "python::pip"
include_recipe "python::virtualenv"

execute "apt-get update"

packages = ["sqlite3", "libfreetype6-dev", "libpng-dev", "gfortran", "libblas-dev", "liblapack-dev"]
packages.each do |pkg|
    package pkg do
      action :install
    end
end

# create virtual environment and install python data resources
virtualenv_path = node['python-data']['virtualenv_dir'] + node['python-data']['virtualenv_name']
python_virtualenv virtualenv_path do
    action :create
end

python_packages = ["ipython", "numpy", "matplotlib", "scipy", "pandas", "scikit-learn", "statsmodels", "patsy"]
python_packages.each do |pkg|
    python_pip pkg do
      virtualenv virtualenv_path
      action :install
    end
end
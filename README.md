Description
===========

Creates a Python data analysis playground by creating a virtual environment 
and installing common data-related packages.

Requirements
============

Chef 0.10.10+.

Platform
--------

* Ubuntu

Tested on:

* Ubuntu 12.04

Cookbooks
---------

Requires Opscode's apt cookbook.
Requires Opscode's python cookbook to create virtualenv and pip
install packages. 
See _Attributes_ for more information.

Attributes
==========

See the `attributes/server.rb` or `attributes/client.rb` for default
values. 

* `node['python-data']['virtualenv_dir'] - location of virtual environment
* `node['python-data']['virtualenv_name'] - name of the virtual environment

License and Author
==================

- Author:: Becky Sweger

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

#
# Author:: Adam Edwards (<adamed@getchef.com>)
#
# Copyright:: 2014, Opscode, Inc.
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

require_relative '../spec_helper.rb'
require_relative '../../libraries/dsc_resource.rb'

describe DscResource do
  before(:all) do
    ohai_reader = Ohai::System.new
    ohai_reader.all_plugins("platform")

    new_node = Chef::Node.new
    new_node.consume_external_attrs(ohai_reader.data,{})

    events = Chef::EventDispatch::Dispatcher.new

    @run_context = Chef::RunContext.new(new_node, {}, events)
  end
end



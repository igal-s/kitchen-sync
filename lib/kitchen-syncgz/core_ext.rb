#
# Copyright 2019, Igal Shprincis
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

module Kitchen
  # Monkey patch to prevent the deletion of everything
  module Provisioner
    class ChefBase < Base

      old_init_command = instance_method(:init_command)

      define_method(:init_command) do
        if defined?(Kitchen::Transport::Sftpgz) && instance.transport.is_a?(Kitchen::Transport::Sftpgz)
           "mkdir -p #{config[:root_path]}"
        else
          old_init_command.bind(self).()
        end
      end

    end
  end
end

#
# Copyright (c) 2016 KITAITI Makoto (KitaitiMakoto at gmail.com)
#
# itamae-plugin-resource-security_context is free software: you can redistribute it and/or modify
# it under the terms of the GNU Lesser General Public License as published
# by the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# itamae-plugin-resource-security_context is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public License
# along with itamae-plugin-resource-security_context.  If not, see <http://www.gnu.org/licenses/>.
#
require 'itamae'

module Itamae
  module Plugin
    module Resource
      class SecurityContext < ::Itamae::Resource::Base
        # itamae-plugin-resource-security_context version
        VERSION = "0.1.0"
      end
    end
  end
end

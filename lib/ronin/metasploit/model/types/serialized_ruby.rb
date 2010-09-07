#
# Ronin Exploits - A Ruby library for Ronin that provides exploitation and
# payload crafting functionality.
#
# Copyright (c) 2007-2010 Hal Brodigan (postmodern.mod3 at gmail.com)
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
#

require 'dm-core'
require 'base64'

module Ronin
  module Metasploit
    module Model
      module Types
        class SerializedRuby < DataMapper::Property::Text

          #
          # Loads Base64 encoded Marshal dumps.
          #
          # @param [String, nil] value
          #   The Base64 encoded Marshal dump.
          #
          # @return [Object, nil]
          #   A native Ruby object.
          #
          def load(value)
            if (value.nil? || value.empty?)
              nil
            else
              begin
                Marshal.load(Base64.decode64(value))
              rescue TypeError
                nil
              end
            end
          end

        end
      end
    end
  end
end

#
# Ronin Metasploit - A Ronin library for accessing The Metasploit Framework.
#
# Copyright (c) 2010 Hal Brodigan (postmodern.mod3 at gmail.com)
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

require 'ronin/metasploit/workspace'
require 'ronin/metasploit/host'
require 'ronin/metasploit/service'
require 'ronin/metasploit/model'

module Ronin
  module Metasploit
    #
    # Maps in the `loots` table used by `Msf::DBManager::Loot`.
    #
    class Loot

      include Model

      storage_names[:metasploit] = 'loots'

      property :id, Serial

      property :ltype, String

      property :path, Text

      property :data, SerializedRuby

      property :content_type, String

      property :name, Text

      property :info, Text

      property :created_at, DateTime

      property :updated_at, DateTime

      belongs_to :workspace

      belongs_to :host

      belongs_to :service

    end
  end
end

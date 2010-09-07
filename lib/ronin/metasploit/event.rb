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
require 'ronin/metasploit/model'

module Ronin
  module Metasploit
    #
    # Maps in the `events` table used by `Msf::DBManager::Event`.
    #
    class Event

      include Model

      storage_names[:metasploit] = 'events'

      property :id, Serial

      property :name, String

      property :critical, Boolean

      property :seen, Boolean

      property :username, String

      property :info, Text

      property :created_at, DateTime

      belongs_to :host

      belongs_to :workspace

    end
  end
end

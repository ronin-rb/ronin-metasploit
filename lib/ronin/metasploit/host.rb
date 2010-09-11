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

require 'ronin/metasploit/model'

module Ronin
  module Metasploit
    #
    # Maps in the `hosts` table used by `Msf::DBManager::Host`.
    #
    class Host

      include Model

      storage_names[:metasploit] = 'hosts'

      property :id, Serial

      property :address, String

      property :address6, String

      property :mac, String

      property :comm, String

      property :name, String

      property :state, String

      property :os_name, String

      property :os_flavor, String

      property :os_sp, String

      property :os_lang, String

      property :arch, String

      property :purpose, Text

      property :info, Text

      property :comments, Text

      property :created_at, DateTime

      property :updated_at, DateTime

      belongs_to :workspace

      has n, :services

      has n, :clients

      has n, :events

      has n, :loots

      has n, :notes

      has n, :vulns

      has n, :exploited_hosts

    end
  end
end

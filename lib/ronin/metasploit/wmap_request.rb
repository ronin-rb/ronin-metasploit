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
    # Maps in the `wmap_requests` table used by
    # `Msf::DBManager::WmapRequest`.
    #
    class WMapRequest

      include Model

      storage_names[:metasploit] = 'wmap_requests'

      property :id, Serial

      property :host, String

      property :address, String

      property :address6, String

      property :port, Integer

      property :ssl, Integer

      property :meth, String

      property :path, Text

      property :headers, Text

      property :query_string, Text, :field => 'query'

      property :body, Text

      property :respcode, String

      property :resphead, Text

      property :response, Text

      property :created_at, DateTime

    end
  end
end

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

require 'ronin/metasploit/config'
require 'ronin/metasploit/client'
require 'ronin/metasploit/credential'
require 'ronin/metasploit/event'
require 'ronin/metasploit/exploited_host'
require 'ronin/metasploit/host'
require 'ronin/metasploit/loot'
require 'ronin/metasploit/note'
require 'ronin/metasploit/project_member'
require 'ronin/metasploit/ref'
require 'ronin/metasploit/report'
require 'ronin/metasploit/schema_migration'
require 'ronin/metasploit/service'
require 'ronin/metasploit/task'
require 'ronin/metasploit/user'
require 'ronin/metasploit/vuln'
require 'ronin/metasploit/vuln_ref'
require 'ronin/metasploit/wmap_request'
require 'ronin/metasploit/wmap_target'
require 'ronin/metasploit/workspace'

require 'dm-core'

module Ronin
  module Metasploit
    module Database
      # The default URI to the Metasploit Database
      DEFAULT_URI = Addressable::URI.new(
        :scheme => 'sqlite3',
        :path => File.join(Config::CONFIG_DIR,'sqlite3.db')
      )

      #
      # Maps in the Metasploit Database using DataMapper.
      #
      # @param [String, Addressable::URI] uri
      #   Optional URI to the Metasploit Database.
      #
      # @return [true]
      #   Specifies the database was successfully mapped in.
      #
      def Database.setup(uri=DEFAULT_URI)
        DataMapper.setup(:metasploit,uri)
        return true
      end

      #
      # The current schema version of the Metasploit Database.
      #
      # @return [String]
      #   The schema version.
      #
      def Database.schema_version
        if (migration = SchemaMigration.last)
          migration.version
        end
      end
    end
  end
end

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
    # Maps in the `users` table created by
    # `msf3/data/sql/migrate/008_create_users.rb`.
    #
    class User

      include Model

      storage_names[:metasploit] = 'users'
      
      property :id, Serial
      
      property :username, String
      
      property :crypted_password, String
      
      property :password_salt, String
      
      property :persistence_token, String
      
      property :created_at, DateTime
      
      property :updated_at, DateTime
      
      property :fullname, String
      
      property :email, String
      
      property :phone, String
      
      property :company, String
      
      property :prefs, SerializedRuby
      
      property :admin, Boolean

      has n, :project_members

      has n, :workspaces, :through => :project_members

    end
  end
end

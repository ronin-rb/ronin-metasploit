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

require 'pullr'

module Ronin
  module Metasploit
    #
    # Adds the Metasploit directory to the `$LOAD_PATH` constant.
    #
    # @return [Boolean]
    #
    def Metasploit.activate!
      path = Config.root

      if path
        path = File.join(path,LIB_DIR)

        $LOAD_PATH << path unless $LOAD_PATH.include?(path)
        return true
      else
        return false
      end
    end

    #
    # Removes all Metasploit directories from the `$LOAD_PATH` constant.
    #
    # @return [true]
    #
    def Metasploit.deactive!
      path = Config.root

      if path
        $LOAD_PATH.reject! do |lib_dir|
          lib_dir[0..path.length] == path
        end
      end

      return true
    end

    #
    # Updates the Metasploit installation, if it was checked out from
    # SubVersion.
    #
    # @return [Boolean]
    #   Specifies whether the update was successful.
    #
    def Metasploit.update!
      return false unless Config.root

      begin
        repo = Pullr::LocalRepository.new(:path => Config.root)

        # temporarily remove Metasploit from the $LOAD_PATH
        Metasploit.deactive!

        # update the Metasploit installation
        repo.update

        # add Metasploit back to the $LOAD_PATH
        Metasploit.activate!
      rescue Pullr::AmbigiousRepository
        return false
      end

      return true
    end

  end
end

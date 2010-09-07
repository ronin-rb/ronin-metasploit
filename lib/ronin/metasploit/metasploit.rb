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

require 'ronin/config'

require 'pullr'

module Ronin
  module Metasploit
    # The configuration directory used by Metasploit
    CONFIG_DIR = File.join(Config::HOME,'.msf3')

    # The default URI to the Metasploit Database
    DEFAULT_DATABASE_URI = Addressable::URI.new(
      :scheme => 'sqlite3',
      :path => File.join(CONFIG_DIR,'sqlite3.db')
    )

    # Directories that metasploit may be installed within
    SEARCH_DIRS = [
      File.join(Config::HOME,'metasploit3'),  # SVN checkout
      File.join(Config::HOME,'msf3'),         # SVN checkout
      '/pentest/svn/framework3',              # BackTrac Linux
      '/opt/metasploit3/msf3',                # Linux
    ]

    # The directory within metasploit containing the framework code
    LIB_DIR = 'lib'

    # The directory within metasploit containing all modules
    MODULES_DIR = 'modules'

    #
    # The directory where Metasploit was installed into.
    #
    # @return [String, nil]
    #   The directory that Metasploit was installed into. Returns `nil`, if
    #   none of the paths in `SEARCH_DIRS` are valid directories.
    #
    # @since 0.4.0
    #
    def Metasploit.root
      unless defined?(@@ronin_metasploit_root)
        @@ronin_metasploit_root = SEARCH_DIRS.find do |dir|
          File.directory?(dir)
        end
      end

      return @@ronin_metasploit_root
    end

    #
    # Sets the directory that Metasploit is installed within.
    #
    # @param [String] new_dir
    #   The new directory to use.
    #
    # @return [String]
    #   The new Metasploit directory.
    #
    # @since 0.4.0
    #
    def Metasploit.root=(new_dir)
      @@ronin_metasploit_root = File.expand_path(new_dir)
    end

    #
    # Adds the Metasploit directory to the `$LOAD_PATH` constant.
    #
    # @return [Boolean]
    #
    # @since 0.4.0
    #
    def Metasploit.activate!
      path = Metasploit.root

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
    # @since 0.4.0
    #
    def Metasploit.deactive!
      path = Metasploit.root

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
    # @since 0.4.0
    #
    def Metasploit.update!
      return false unless Metasploit.root

      begin
        repo = Pullr::LocalRepository.new(:path => Metasploit.root)

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

    #
    # Maps in the Metasploit Database using DataMapper.
    #
    # @param [String, Addressable::URI] uri
    #   Optional URI to the Metasploit Database.
    #
    # @return [true]
    #   Specifies the database was successfully mapped in.
    #
    def Metasploit.database!(uri=DEFAULT_DATABASE_URI)
      DataMapper.setup(:metasploit,uri)
      return true
    end

  end
end

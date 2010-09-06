require 'rubygems'
require 'bundler'

begin
  Bundler.setup(:development, :doc)
rescue Bundler::BundlerError => e
  STDERR.puts e.message
  STDERR.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end

require 'rake'
require 'jeweler'
require './lib/ronin/metasploit/version.rb'

Jeweler::Tasks.new do |gem|
  gem.name = 'ronin-metasploit'
  gem.version = Ronin::Metasploit::VERSION
  gem.licenses = ['GPL-2']
  gem.summary = %Q{A Ronin library which provides support for accessing The Metasploit Framework.}
  gem.description = %Q{Ronin Metasploit is a Ronin library which provides support for accessing The Metasploit Framework.}
  gem.email = 'postmodern.mod3@gmail.com'
  gem.homepage = 'http://github.com/ronin-ruby/ronin-metasploit'
  gem.authors = ['Postmodern']
  gem.has_rdoc = 'yard'
end

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new
task :default => :spec

require 'yard'
YARD::Rake::YardocTask.new

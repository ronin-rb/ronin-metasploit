source 'https://rubygems.org'

DATA_MAPPER = 'http://github.com/datamapper'
DM_VERSION = '~> 1.0.2'
RONIN = 'http://github.com/ronin-ruby'

gemspec

# DataMapper dependencies
gem 'dm-migrations',	DM_VERSION, :git => 'http://github.com/postmodern/dm-migrations.git', :branch => 'runner'

# DataMapper plugins
gem 'dm-is-read_only',	'~> 0.2.0', :git => 'http://github.com/postmodern/dm-is-read_only.git'

# Ronin dependencies
gem 'ronin-support',	'~> 0.1.0', :git => "#{RONIN}/ronin-support.git"
gem 'ronin',		'~> 1.0.0', :git => "#{RONIN}/ronin.git"

group(:development) do
  gem 'rake',		'~> 0.8.7'

  case RUBY_PLATFORM
  when 'java'
    gem 'maruku',	'~> 0.6.0'
  else
    gem 'rdiscount',	'~> 1.6.3'
  end

  gem 'ore-core',	'~> 0.1.0'
  gem 'ore-tasks',	'~> 0.2.0'
  gem 'rspec',		'~> 2.0.0'

  gem 'ruby-graphviz',	'~> 0.9.10'
  gem 'dm-visualizer',	'~> 0.1.0'
  gem 'yard-dm',	'~> 0.1.1'
end

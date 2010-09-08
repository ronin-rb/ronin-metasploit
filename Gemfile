source 'https://rubygems.org'

DATA_MAPPER = 'http://github.com/datamapper'
DM_VERSION = '~> 1.0.2'
RONIN = 'http://github.com/ronin-ruby'

# DataMapper plugins
gem 'dm-is-read_only',	'~> 0.2.0', :git => 'http://github.com/postmodern/dm-is-read_only.git'

gem 'pullr',		'~> 0.1.2'
gem 'ronin',		'~> 0.4.0', :git => "#{RONIN}/ronin.git"

group(:edge) do
  # DataMapper dependencies
  gem 'dm-migrations',	DM_VERSION, :git => 'http://github.com/postmodern/dm-migrations.git', :branch => 'runner'

  gem 'ronin-support',	'~> 0.1.0', :git => "#{RONIN}/ronin-support.git"
end

group(:development) do
  gem 'rake',		'~> 0.8.7'
  gem 'jeweler',	'~> 1.5.0.pre'
end

group(:doc) do
  case RUBY_PLATFORM
  when 'java'
    gem 'maruku',	'~> 0.6.0'
  else
    gem 'rdiscount',	'~> 1.6.3'
  end

  gem 'ruby-graphviz',		'~> 0.9.10'
  gem 'dm-visualizer',		'~> 0.1.0'
  gem 'yard',			'~> 0.6.0'
  gem 'yard-dm',		'~> 0.1.1'
end

gem 'rspec',	'~> 2.0.0.beta.20', :group => [:development, :test]

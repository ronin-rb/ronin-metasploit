source 'https://rubygems.org'

DATA_MAPPER = 'http://github.com/datamapper'
RONIN = 'http://github.com/ronin-ruby'

# DataMapper dependencies
gem 'dm-core',		'~> 1.0.0', :git => "#{DATA_MAPPER}/dm-core.git"
gem 'dm-migrations',	'~> 1.0.0', :git => 'http://github.com/postmodern/dm-migrations.git', :branch => 'runner'

gem 'pullr',		'~> 0.1.2'
gem 'ronin-support',	'~> 0.1.0', :git => "#{RONIN}/ronin-support.git"
gem 'ronin',		'~> 0.4.0', :git => "#{RONIN}/ronin.git"

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

  gem 'yard',			'~> 0.6.0'
end

gem 'rspec',	'~> 2.0.0.beta.20', :group => [:development, :test]

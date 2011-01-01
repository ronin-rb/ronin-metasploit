source 'https://rubygems.org'

DATA_MAPPER = 'http://github.com/datamapper'
DM_VERSION = '~> 1.0.2'
RONIN = 'http://github.com/ronin-ruby'

gemspec

# Ronin dependencies
gem 'ronin-support',	'~> 0.1.0', :git => "#{RONIN}/ronin-support.git"
gem 'ronin',          '~> 1.0.0', :git => "#{RONIN}/ronin.git"

group(:development) do
  gem 'rake',	        '~> 0.8.7'

  gem 'ore-core',     '~> 0.1.0'
  gem 'ore-tasks',    '~> 0.2.0'
  gem 'rspec',        '~> 2.0.0'

  gem 'kramdown',       '~> 0.12.0'
  gem 'ruby-graphviz',	'~> 0.9.10'
  gem 'dm-visualizer',	'~> 0.1.0'
  gem 'yard-dm',        '~> 0.1.1'
end

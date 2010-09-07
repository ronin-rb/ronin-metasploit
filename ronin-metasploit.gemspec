# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{ronin-metasploit}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Postmodern"]
  s.date = %q{2010-09-06}
  s.default_executable = %q{ronin-metasploit}
  s.description = %q{Ronin Metasploit is a Ronin library which provides support for accessing The Metasploit Framework.}
  s.email = %q{postmodern.mod3@gmail.com}
  s.executables = ["ronin-metasploit"]
  s.extra_rdoc_files = [
    "ChangeLog.md",
    "README.md"
  ]
  s.files = [
    ".gitignore",
    ".rspec",
    ".yardopts",
    "COPYING.txt",
    "ChangeLog.md",
    "Gemfile",
    "Gemfile.lock",
    "README.md",
    "Rakefile",
    "bin/ronin-metasploit",
    "lib/ronin/metasploit.rb",
    "lib/ronin/metasploit/metasploit.rb",
    "lib/ronin/metasploit/model.rb",
    "lib/ronin/metasploit/sandbox.rb",
    "lib/ronin/metasploit/version.rb",
    "ronin-metasploit.gemspec",
    "spec/metasploit/metasploit_spec.rb",
    "spec/spec_helper.rb"
  ]
  s.has_rdoc = %q{yard}
  s.homepage = %q{http://github.com/ronin-ruby/ronin-metasploit}
  s.licenses = ["GPL-2"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{A Ronin library which provides support for accessing The Metasploit Framework.}
  s.test_files = [
    "spec/metasploit/metasploit_spec.rb",
    "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<dm-core>, ["~> 1.0.0"])
      s.add_runtime_dependency(%q<dm-migrations>, ["~> 1.0.0"])
      s.add_runtime_dependency(%q<dm-is-read_only>, ["~> 0.2.0"])
      s.add_runtime_dependency(%q<pullr>, ["~> 0.1.2"])
      s.add_runtime_dependency(%q<ronin-support>, ["~> 0.1.0"])
      s.add_runtime_dependency(%q<ronin>, ["~> 0.4.0"])
      s.add_development_dependency(%q<rake>, ["~> 0.8.7"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.5.0.pre"])
      s.add_development_dependency(%q<rspec>, ["~> 2.0.0.beta.20"])
    else
      s.add_dependency(%q<dm-core>, ["~> 1.0.0"])
      s.add_dependency(%q<dm-migrations>, ["~> 1.0.0"])
      s.add_dependency(%q<dm-is-read_only>, ["~> 0.2.0"])
      s.add_dependency(%q<pullr>, ["~> 0.1.2"])
      s.add_dependency(%q<ronin-support>, ["~> 0.1.0"])
      s.add_dependency(%q<ronin>, ["~> 0.4.0"])
      s.add_dependency(%q<rake>, ["~> 0.8.7"])
      s.add_dependency(%q<jeweler>, ["~> 1.5.0.pre"])
      s.add_dependency(%q<rspec>, ["~> 2.0.0.beta.20"])
    end
  else
    s.add_dependency(%q<dm-core>, ["~> 1.0.0"])
    s.add_dependency(%q<dm-migrations>, ["~> 1.0.0"])
    s.add_dependency(%q<dm-is-read_only>, ["~> 0.2.0"])
    s.add_dependency(%q<pullr>, ["~> 0.1.2"])
    s.add_dependency(%q<ronin-support>, ["~> 0.1.0"])
    s.add_dependency(%q<ronin>, ["~> 0.4.0"])
    s.add_dependency(%q<rake>, ["~> 0.8.7"])
    s.add_dependency(%q<jeweler>, ["~> 1.5.0.pre"])
    s.add_dependency(%q<rspec>, ["~> 2.0.0.beta.20"])
  end
end

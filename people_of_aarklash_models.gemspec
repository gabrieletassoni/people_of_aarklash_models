require_relative "lib/people_of_aarklash_models/version"

Gem::Specification.new do |spec|
  spec.name        = "people_of_aarklash_models"
  spec.version     = PeopleOfAarklashModels::VERSION
  spec.authors = ["Gabriele Tassoni"]
  spec.email = ["gabriele.tassoni@gmail.com"]
  spec.homepage = "https://github.com/gabrieletassoni/people_of_aarklash_models"
  spec.summary = "Models to hold the profiles of Aarklash warriors"
  spec.description = "Build Army lists for Confrontation 5 community-driven ruleset"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/blob/master/CHANGELOG.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency 'model_driven_api', '~> 3.1'
  spec.add_dependency 'thecore_ui_rails_admin', '~> 3.2'
end


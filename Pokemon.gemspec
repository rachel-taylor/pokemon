lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "Pokemon/version"

Gem::Specification.new do |spec|
  spec.name          = "Pokemon"
  spec.version       = Pokemon::VERSION
  spec.authors       = ["'Rachel T'"]
  spec.email         = ["'taylor.d.rachel@gmail.com'"]

  spec.summary       = %q{TODO: Obtain information about a Pokemon by number, sourced from PokeApi. Gives ability information for all Pokemon in the PokeApi, Pokedex.}
  # spec.description   = %q{TODO: }
  # spec.homepage      = "https://github.com/rachel-taylor/pokemon"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/rachel-taylor/pokemon"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "json"
  spec.add_development_dependency "HTTParty"
  spec.add_development_dependency "pry"
end

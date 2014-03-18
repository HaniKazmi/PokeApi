Gem::Specification.new do |s|
  s.name        = 'pokeruby'
  s.version     = '0.0.2'
  s.date        = '2014-03-18'
  s.summary     = "A Pokemon wrapper for pokeapi.co"
  s.description = "A wrapper for pokeapi.co, which allows you to manage Pokemon objects"
  s.authors     = ["Hani Kazmi"]
  s.email       = 'hanikazmi@me.com'
  s.files       = `git ls-files`.split("\n") - %w(.rvmrc .gitignore pokeruby.gemspec)
  s.homepage    = 'https://github.com/HaniKazmi/PokeApi'
  s.license     = 'MIT'
end

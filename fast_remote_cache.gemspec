Gem::Specification.new do |s|
  s.name        = 'fast_remote_cache'
  s.version     = '1.0.0'
  s.date        = '2010-03-30'
  s.summary     = 'A faster version of Capistrano\'s remote_cache deployment strategy'
  s.description = s.summary

  s.add_dependency('capistrano')

  s.files = Dir['lib/**/*']

  s.author   = 'Jamis Buck'
  s.email    = 'jamis@jamisbuck.org'
  s.homepage = 'http://github.com/37signals/fast_remote_cache'
end

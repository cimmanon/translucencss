Gem::Specification.new do |s|
  # Release Specific Information
  s.version = "0.1.3"
  s.date = "2013-05-30"

  # Gem Details
  s.name = "translucencss"
  s.authors = ["Chris Siepker"]
  s.summary = %q{TranslucenCSS:  common CSS patterns abstracted as mixins and variables}
  s.description = %q{TranslucenCSS doesn't generate anything that you don't absolutely need to get the desired effect, leaving you free to style your elements without constantly undoing}
  s.email = "chris@cimmanon.org"
  s.homepage = "http://www.cimmanon.org/"

  # Gem Files
#  s.files = %w(README.txt)
  s.files = Dir.glob("lib/**/*.*")
  s.files += Dir.glob("stylesheets/**/*.*")
  s.files += Dir.glob("templates/**/*.*")

  # Gem Bookkeeping
  s.rubygems_version = %q{1.3.6}
  s.add_dependency("compass", "~> 1.0.0.alpha.17")
end
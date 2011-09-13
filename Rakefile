require 'rubygems'
require 'bundler/setup'

require 'coffee-script'

require 'pathname'
require 'fileutils'

desc 'Build coffee scripts to JS'
task :build do
  Dir.glob('coffee/**/*.coffee') do |file|
    path = Pathname.new(file.gsub(/(^coffee|coffee$)/, 'js'))
    FileUtils.mkdir_p path.dirname
    File.open(path.to_s, 'w') do |f|
      f.puts CoffeeScript.compile File.read(file)
    end
  end
end

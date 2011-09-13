require 'rubygems'
require 'bundler/setup'

require 'coffee-script'

require 'pathname'
require 'fileutils'

# Extract userscript comment block from CoffeeScript file.
def userscript_commentblock(coffee_file)
  comment = ""
  File.open(coffee_file) do |f|
    while line = f.gets
      break unless line =~ /^#/
      comment += line.gsub(/^#/, '//')
    end
  end
  comment
end

desc 'Build coffee scripts to JS'
task :build do
  Dir.glob('coffee/**/*.coffee') do |file|
    path = Pathname.new(file.gsub(/(^coffee|coffee$)/, 'js'))
    FileUtils.mkdir_p path.dirname
    File.open(path.to_s, 'w') do |f|
      f.puts userscript_commentblock(file)
      f.puts CoffeeScript.compile File.read(file), :bare => true
    end
  end
end

desc 'Show userscript dir in Firefox'
task :show do
  system("firefox file://#{Dir.pwd}/js")
end

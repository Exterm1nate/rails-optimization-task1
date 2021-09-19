require 'ruby-prof'
require_relative 'task-1.rb'

RubyProf.measure_mode = RubyProf::WALL_TIME

result = RubyProf.profile do
  work('data_small.txt', disable_gc: true)
end
printer = RubyProf::GraphHtmlPrinter.new(result)
printer.print(File.open('graph.html', 'w+'))

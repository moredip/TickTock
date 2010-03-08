#task :compile_swc do
#  `compc -source-path+=src -output=bin/TickTock.swc -include-classes net.thepete.TickTock`
#end

file 'bin/TickTock.swc' => ['src/net/thepete/TickTock.as'] do
  `compc -source-path+=src -output=bin/TickTock.swc -include-classes net.thepete.TickTock`
end

file 'bin/Sample.swf' => ['src/Sample.mxml','bin/TickTock.swc'] do
  `mxmlc -library-path+=bin/TickTock.swc src/Sample.mxml -output bin/Sample.swf`
end

task :default => 'bin/Sample.swf'

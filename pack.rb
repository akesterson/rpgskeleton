#!/usr/bin/env ruby

output = %x[make pack]
if $? != 0
  puts output
  puts "Something went wrong - please fix it (enter to continue)"
  gets
end

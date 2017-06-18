#!/usr/bin/ruby

limit = 0
begin

  raise ArgumentError
  puts "begin"

rescue ArgumentError
  limit += 1

  if limit < 122222
    retry
  end

  puts limit

  puts "end of rescue"

end



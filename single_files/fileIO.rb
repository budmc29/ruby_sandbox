#!/usr/bin/ruby

# Test ruby FileIO class

open("file_to_open.md", "w") do |file|
  file.puts "Lorem"
  file.puts "Ipsum"
  file.puts "Dolor"
end

open("file_to_open.md") do |file|
  file.each { |l| puts "A line from the file: #{l}" }
end


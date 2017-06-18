#!/usr/bin/env ruby

require 'optparse'

options = {}
option_parser = OptionParser.new do |opts|
  opts.on("-i", "--iteration") do
    options[:iteration] = true
  end

  opts.on("-u USER") do |user|
    options[:user] = user
  end

  opts.on("-p PASSWORD") do |password|
    options[:password] = password
  end

  opts.on("-d DATABASE") do |database|
    options[:database] = database
  end
end

option_parser.parse!

required_values = %I[database user password]
missing_values = required_values.select{ |v| options[v].nil? }
if missing_values.any?
  raise OptionParser::MissingArgument.new(missing_values.join(', '))
end

database = options[:database]
username = options[:user]
password = options[:password]
end_of_iteration = options[:iteration]

backup_file = if end_of_iteration.nil?
                database + '_' + Time.now.strftime('%Y%m%d')
              else
                database + '_' + end_of_iteration
              end

mysqldump = "mysqldump -u#{username} -p#{password} " + "#{database}"

`#{mysqldump} > #{backup_file}.sql`
`gzip #{backup_file}.sql`

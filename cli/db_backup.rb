#!/usr/bin/env ruby

database = ARGV.shift
username = ARGV.shift
password = ARGV.shift
end_of_iteration = ARGV.shift

backup_file = if end_of_iteration.nil?
                database + '_' + Time.now.strftime('%Y%m%d')
              else
                database + '_' + end_of_iteration
              end

mysqldump = "mysqldump -u#{username} -p#{password} " + "#{database}"

`#{mysqldump} > #{backup_file}.sql`
`gzip #{backup_file}.sql`


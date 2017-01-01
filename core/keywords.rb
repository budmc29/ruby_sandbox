class KeywordTester
  def run
    puts "\nencoding"
    puts __ENCODING__

    puts "\nline"
    puts __LINE__

    puts "\nfile"
    puts __FILE__

    puts foo
    undef foo
    puts(foo) rescue ''
  end

  def foo
    puts 'bar'
  end

  # TODO: learn alias
  # TODO: learn defined?
end

BEGIN {
  puts 'BEGIN: runs before any other code'
  puts '-' * 22
}

END {
  puts "\n" + "-" * 22
  puts "END: runs before any other code"
}

keywords = KeywordTester.new
keywords.run

class Dummy
  def method_missing(m, *args, &block)
    puts "no method #{m} with #{args} and #{block}"
    yield
  end
end

Dummy.new.any('aoeua', 'rlhm') do
  puts 'test'
end

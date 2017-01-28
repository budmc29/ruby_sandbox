require 'syslog'

class LoggingArray
  def initialize(proxied_array = [])
    @proxied_array = proxied_array
  end

  def method_missing(sym, *args, &block)
    if @proxied_array.respond_to?(sym)
      Syslog.info("Array#{@proxied_array.object_id} was accessed")
      @proxied_array.send(sym, *args, &block)
    else
      super
    end
  end
end

Syslog.open('logging array')
array = LoggingArray.new
array.push(3)
Syslog.close

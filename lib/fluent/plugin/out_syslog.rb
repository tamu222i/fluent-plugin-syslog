require "fluent/plugin/version"

class Fluent::SyslogOutput2 < Fluent::BufferedOutput
    Fluent::Plugin.register_output('outsyslog', self)
    def initialize
      super
    end
    def configure(conf)
      super
    end
    def start
      super
    end
    def shutdown
      super
    end
    def format(tag, time, record)
      [tag, time, record].to_msgpack
    end
    def write(chunk)
      records = []
      chunk.msgpach_each{|record|}
    end
end

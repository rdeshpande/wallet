# Log to STDOUT if in Rails
if ENV.include?('RAILS_ENV') && !Object.const_defined?('RAILS_DEFAULT_LOGGER')
  require 'logger'
  RAILS_DEFAULT_LOGGER = Logger.new(STDOUT)
end

obj = Object.new
def fin
    proc{p 1}
end
ObjectSpace.define_finalizer(obj, fin)


require 'irb/completion'

module Readline
  module History
    LOG = "#{ENV['HOME']}/.irb-history"

    def self.write_log(line)
      File.open(LOG, 'ab') {|f| f << "#{line}\n"}
    end

    def self.start_session_log
      write_log("\n# session start: #{Time.now}\n\n")
      at_exit { write_log("\n# session stop: #{Time.now}\n") }
    end
  end

  alias :old_readline :readline
  def readline(*args)
    ln = old_readline(*args)
    begin
      History.write_log(ln)
    rescue
    end
    ln
  end
end

ARGV.concat [ "--readline", "--prompt-mode", "simple" ]

require 'irb/ext/save-history'
IRB.conf[:SAVE_HISTORY] = 100
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-history"

IRB.conf[:PROMPT_MODE] = :SIMPLE


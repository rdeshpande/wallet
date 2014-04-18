require "rubygems"
require 'irb/ext/save-history'
require "awesome_print"

AwesomePrint.irb!

IRB.conf[:SAVE_HISTORY] = 2000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-history"

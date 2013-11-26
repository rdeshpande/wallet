# Use Pry everywhere
require "rubygems"
require 'pry'
require 'hirb'

# vim FTW
Pry.config.editor = "gvim --nofork"

Pry.config.print = proc do |output, value|
  Hirb::View.view_or_page_output(value) || Pry::DEFAULT_PRINT.call(output, value)
end

Hirb.enable
Pry.start
exit

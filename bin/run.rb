#!/usr/bin/env ruby
require_relative '../config/environment.rb'
#require_relative 'lib/command_line_interface.rb'

cli = CommandLineInterface.new
#new instance of CommandLineInterface class set to variable cli

cli.welcome
#call our welcome method within our CommandLineInterface class

cli.quiz_script
#call our script after welcome

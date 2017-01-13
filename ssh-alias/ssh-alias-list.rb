#!/usr/bin/env ruby

require 'fileutils'

config_path = File.expand_path('~/.ssh/config')

FileUtils.touch(config_path)

contents = File.open(config_path).read
puts contents.scan(/^host (.*)$/)
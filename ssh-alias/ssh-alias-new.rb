#!/usr/bin/env ruby

require 'fileutils'

config_path = File.expand_path('~/.ssh/config')
key_path = File.expand_path('~/.ssh/id_rsa.pub')

FileUtils.touch(config_path)

unless File.exist?(key_path)
  puts 'No private/public key pair found, generating new ones (default key).';
  system 'ssh-keygen -t rsa -q -f ~/.ssh/id_rsa.pub'
end

print "Shortname for the site (e.g myserver): "
shortname = gets.strip;

exit if shortname.empty?

if File.exist?(config_path) and File.read(config_path).include?('host '+shortname+"\n")
  puts "Shortname already exists. Try `ssh #{shortname}`."
  exit;
end

print "Hostname of the server: "
hostname = gets.strip;

exit if hostname.empty?

print "Port (default: 22): "
port = gets.strip;
port = '22' if port.empty?

print "User (default: root): "
user = gets.strip;
user = 'root' if user.empty?

print "Generate new key for host #{hostname}? (y/n): "
newKey = gets.strip.downcase;

if newKey == 'y' || newKey == 'yes'
  print "Comment / Identifier in authorized_keys: "
  comment = gets.strip;

	system "ssh-keygen -t rsa -q -f ~/.ssh/id_rsa_#{shortname} -C #{comment}"
	puts "New key generated: ~/.ssh/id_rsa#{shortname}"
	key_path = File.expand_path("~/.ssh/id_rsa_#{shortname}.pub")
end

File.open(config_path, 'a') do |file|
  file.puts "host #{shortname}"
  file.puts " hostname #{hostname}"
  file.puts " port #{port}"
  file.puts " user #{user}"
  if newKey == 'y' || newKey == 'yes'
  	file.puts " IdentityFile ~/.ssh/id_rsa_#{shortname}"
  end
  file.puts ""
end

print "Would you like to transfer public key (#{key_path}) to server #{hostname} (#{shortname})? (y/n): "
transferKey = gets.strip.downcase;

if transferKey == 'y' || transferKey == 'yes'
	system "KEY=$(cat #{key_path}); ssh #{shortname} -p #{port} \"mkdir -p ~/.ssh; echo $KEY >> ~/.ssh/authorized_keys;\""
	puts "Key transfered to server."
end

puts "All done! Just type `ssh #{shortname}` to connect to the server from now on."
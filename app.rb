require 'bundler'
Bundler.require

$:.unshift File.expand_path('./../lib', __FILE__)

Application.new.perform
Show.new.show_board(instances_de_Board)

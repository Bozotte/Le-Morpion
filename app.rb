require 'bundler'
Bundler.require

$:.unshift File.expand_path('./../lib', __FILE__)

require 'application'
#require 'app/game'
#require 'app/board'

play = Application.new.perform
Show.new.show_board(instances_de_Board)

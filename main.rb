require 'pp'
require './player'
require './questions'
require './game'

puts "Player 1, enter your name."
player_1 = gets.chomp

puts "Player 2, enter your name."
player_2 = gets.chomp

new_game = Game.new(player_1, player_2)
new_game.game_run
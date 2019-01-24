require 'pry'

class Player # la classe a 2 attr_reader, son nom et sa valeur (X ou O).
attr_reader :player_1, :player_2

  def initialize

    @player_1 == player_1 # 0
    @player_2 == player_2 # X

  def create_player # Méthode attribution des joueurs

    puts "Bonjour, ton nom de joueur est 0 (c'est sexy, je sais), tape 0 pour confirmer"
    print ">"
    @player_1 = gets.chomp # Instruction au joueur 1
    print "> Tu joueras donc avec X\n"

    puts "Qui est ton adversaire (c'est pour voir si tu suis), allez tape X !"
    print ">"
    @player_2 = gets.chomp # Instruction au joueur 2
    print "> Tu joueras donc avec O\n"
  end
end # fin de la classe

require 'pry'

class Player # la classe a 2 attr_reader, son nom et sa valeur (X ou O).

attr_reader :player_1, :player_2

  def initialize

    @player_1 == player_0 # 0
    @player_2 == player_X # X

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

# def player_value #Ne jamais appeler une méthode comme une variable d'instance
#   case
#   when "player_1"
#     return "O"
#   when "player_2"
#     return "X"
#   end
# end

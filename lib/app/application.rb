require 'app/game'
require 'pry'

class Application # Permet de lancer le jeu.

  def initialize # Méthode qui initialise le jeu
    @game = Game.new # Instanciation du Game
  end

  def perform # Méthode qui démarre le jeu

    puts "Bienvenue, c'est parti pour le jeu du morpion"
    while true # Boucle (while) infinie de parties (tant que les joueurs/ joueuses ne disent pas stop)

      # Menu
      puts "Qu'est-ce que tu veux faire ?"
      puts "1. Je veux démarrer une partie"
      puts "2. J'en ai déjà marre, je veux sortir du jeu"
      params = gets.chomp.to_i # Integer (nombre entier)

      case params
        when 1
          puts "Ok, let's go"
          @game.create_player
          # @game.show_game
          @game.run_game

        when 2
          puts "T'as raison, ce jeu est naze bye"
          break # Arrêt de la boucle quand le player dit bye bye.
        else
          puts "J'ai pas compris, tape bien 1 ou 2, merci !"

        end
      end
    end


end

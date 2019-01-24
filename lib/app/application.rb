require_relative './../views/show'
require_relative 'game'
require 'pry'

class Application # Permet de lancer le jeu.

  def initialize # Méthode qui initialise le jeu
    @game = Game.new # Instanciation du Game
    @show = Show.new # Instanciation du Show
  end
  #"Router.new" lancé par app.rb va créer auto une instance "@controller"

  def perform # Méthode qui démarre le jeu. Après initialize, on définit perform.

    puts "Bienvenue, c'est parti pour le jeu du morpion"
    player_1 = @show.player_inscription_1
    player_2 = @show.player_inscription_2
    @game.launch(player_1, player_2)
    while true # Boucle (while) infinie de parties (tant que les joueurs/ joueuses ne disent pas stop)

      # Menu
      puts "Qu'est-ce que tu veux faire ?"
      puts "1. Je veux démarrer une partie"
      puts "2. J'en ai déjà marre, je veux sortir du jeu"
      params = gets.chomp.to_i # On attend le choix de l'utilisateur | Integer (nombre entier)

      case params # selon le choix adopté
        when 1
          puts "Ok, let's go"
          @game.launch(player_1, player_2)

        when 2
          puts "T'as raison, ce jeu est naze bye"
          break # Arrêt de la boucle quand le player dit bye bye.
        else
          puts "J'ai pas compris, récapitule depuis le début !"

        end
      end
    end
end # Fin class Application

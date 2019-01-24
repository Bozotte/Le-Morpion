require 'pry'
require_relative 'boardcase' # le Board va s'occuper de faire le lien entre les BoardCases et le Game
require 'game'

# le board change les valeurs des BoardCases (de " " à "x" ou "o") et vérifie en fonction de
#la combinaison des BoardCases si la partie est finie (= un joueur a gagné ou
# bien les 9 cases sont remplies sans vainqueur > pas réussi à paramétrer

class Board

  attr_accessor :boardcases

	def initialize #à l'initialisation le plateau se dote d'un nb de colonne == nb de lignes via un nombre choisi élevé au carré
		@boardcases = [BoardCase.new("A1"),BoardCase.new("B1"),BoardCase.new("C1"),BoardCase.new("A2"),BoardCase.new("B2"),BoardCase.new("C2"), BoardCase.new("A3"),BoardCase.new("B3"),BoardCase.new("C3")]
	end


    end

    def win_combos # Méthode pour définir les combinaisons gagnantes
        [[@a1, @a2, @a3],
        [@a1, @b2, @c3],
        [@a1, @b1, @c1],
        [@b1, @b2, @b3],
        [@c1, @c2, @c3],
        [@c1, @b2, @a3],
        [@a2, @b2, @c2],
        [@a3, @b3, @c3]]

binding.pry

        def check_validity square_availability # Case disponible pour jouer ou non sous forme de booléen
          if square_availability == " "
            true
          else
            puts "Cette case est déjà prise, tu peux en prendre une autre !"
          end
        end

    def player_1 # Alignement entre les cases et les futurs choix possibles du joueur 1
      user_choice_hash = {"a1" => @a1,
                          "a2" => @a2,
                          "a3" => @a3,
                          "b1" => @b1,
                          "b2" => @b2,
                          "b3" => @b3,
                          "c1" => @c1,
                          "c2" => @c2,
                          "c3" => @c3}

      puts "Choisis une case:"
      user_choice = gets.chomp.downcase # demande au joueur 1 de choisir une case
      user_choice_hash.each do |choice, square|
        if user_choice == choice
          if check_validity(square)
            square.sub!(" ", "X")
            print_grid
          end
        elsif user_choice == "q" or user_choice == "quit"
          exit
        end
      end
      #check_for_winner
    end

    def player_2
      user_choice_hash = {"a1" => @a1,
                          "a2" => @a2,
                          "a3" => @a3,
                          "b1" => @b1,
                          "b2" => @b2,
                          "b3" => @b3,
                          "c1" => @c1,
                          "c2" => @c2,
                          "c3" => @c3}

      puts "Choisis une case :"
      user_choice = gets.chomp.downcase # Demande au joueur 2 ce qu'il souhaite faire
      user_choice_hash.each do |choice, square|
        if user_choice == choice
          if check_validity(square)
            square.sub!(" ", "O")
            print_grid
          end
        elsif user_choice == "q" or user_choice == "quit"
          exit
        end
      end

    def check_for_winner # une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou perdant ou arrêt du jeu
      win_combos.each do |combos|
        if combos[0] == "O" && combos[1] == "O" && combos[2] == "O"
          puts "Tu as perdu, recommence !"
          exit
        elsif combos[0] == "X" && combos[1] == "X" && combos[2] == "X"
          puts "Tu as gagné, bravo Einstein !"
          exit
        else
          puts "Enter q to quit game."
        end
    end
end

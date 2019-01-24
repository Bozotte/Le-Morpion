require 'pry'
require 'board'

class Show # cette classe affiche l'état du plateau de jeu à un instant T.

  def start_game
    puts "Bienvenue dans le jeu du morpion! La partie va bientôt commencer"
    puts "Pour placer ton pion sur une case, tu dois entrer sa location (ex : a1, b3)."
    puts "Pour quitter le jeu, tu dois taper sur q"
  end

  def choice_player
    puts "Où souhaites tu jouer ?"
    user_choice = gets.chomp
    puts "user choice"
    return user_choice
  end

  def game_update
    puts "Voici le board"
  end

end # fin de classe show

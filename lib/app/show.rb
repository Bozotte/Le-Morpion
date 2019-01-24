require 'pry'

class Show # cette classe affiche l'état du plateau de jeu à un instant T.

  def start_game
    puts "Bienvenue dans le jeu du morpion! La partie va bientôt commencer"
    puts "Pour placer ton pion sur une case, tu dois entrer sa location (ex : a1, b3)."
    puts "Pour quitter le jeu, tu dois taper sur q"
  end

  def create_player
    puts "Quel est ton prénom, Player 1 ?"
    player1_name = gets.chomp.to_s
    puts "Et toi Player 2, c'est quoi ton petit nom ? "
    player2_name = gets.chomp.to_s

    players = {player_1: player1_name, player_2: player2_name}

    return players

  end

  def create_game
    puts "La partie commence"
  end

  def choice_player
    puts "Où souhaites tu jouer ?"
    user_choice = gets.chomp.upcase

    return user_choice
  end

  def game_update
    puts "Voici le board"
  end

end

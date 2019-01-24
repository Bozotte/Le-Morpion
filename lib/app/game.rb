# require 'application'
require 'pry'
require 'bundler'
require_relative 'player'
require_relative 'board'
require_relative 'boardcase'
require_relative './../views/show'

#Variables d'instance : tu peux lui rattacher les 2 players (sous forme d'un array), le Board, et des informations annexes comme "quel joueur doit jouer ?", "quel est le statut de la partie (en cours ? player1 a gagné ? etc.)", etc.
#Méthodes : Game permet de jouer un tour (demande au joueur ce qu'il veut faire et rempli la case), s'occupe de finir la partie si un joueur a gagné et propose aux joueurs de faire une nouvelle partie ensuite.

class Game #cette classe s'occupe de gérer toute la partie.

  attr_accessor :current_player, :status, :board[player_1,player_2]
  #TO DO : la classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, nul ou un objet Player s'il gagne), le Board et un array contenant les 2 joueurs.

  def initialize # A l'initialisation, la classe va créer 2 instances de Player et 1 instance de board
    # met le status à "on going", défini un current_player
    @show = Show.new
    @board = Board.new
  end

  def creation_players
    @player_1 = Player.new # Création du joueur 1
    @player_2 = Player.new # Création du joueur 2

  end

  def turn

    #TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board). Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.
  end

  def new_round
    # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
  end

  def game_end
    # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul
  end

  def reinitialization
    @@game_round_number = 0
  
  end




  end

  def create_player
    params = @player_1.create_player


  end

  def show_game
    board = @board.perform
  end

  def run_game


end

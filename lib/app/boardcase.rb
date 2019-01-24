class BoardCase

attr_accessor :value, :identifiant_de_case

# TOUT EST FAUX #

def initialize

  @value == valeur
  @id == identifiant_de_case

  def print_grid
    puts
    puts "   1   2   3"
    puts "A  #{@a1} | #{@a2} | #{@a3} "
    puts "  ---|---|---"
    puts "B  #{@b1} | #{@b2} | #{@b3} "
    puts "  ---|---|---"
    puts "C  #{@c1} | #{@c2} | #{@c3} "
    puts

def empty_square
 if square == "  "
  true
else
  puts "Cette case est déjà prise, tu peux en prendre une autre !"
end

def value # Il manque le lien entre par ex A1 et X / o
case boardcase # Options
when X
    puts "X"

  when O
    puts "O"
    break # Arrêt de la boucle
  else
    puts "J'ai pas compris !"

  end
end

# chacune des 9 instances de BoardCase correspond à l'état d'une case du plateau.
# Variables d'instance : une Boardcase est définie par sa position (A1, B2, B3, etc.)
# et son contenu (Soit elle est vide, soit elle a comme valeur le string "x",
# soit elle a comme valeur le string "o").

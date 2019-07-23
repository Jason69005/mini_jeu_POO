require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new('Josiane') #on présente les players
player2 = Player.new('José')

puts "Voici l'état de chaque joueur" #on présente l'état de chaque joueur 
player1.show_state
player2.show_state

tour = 1
while (player1.life_points > 0) && (player2.life_points > 0)
  puts "\nPassons à la phase d'attaque :" #les joueurs se tappe : josiane commence 
  player1.attacks(player2)
  player2.attacks(player1) if player2.life_points > 0
  puts "\nVoici l'état de nos joueurs" #on fait le bilan des points de vie restant après la première attaque 
  player1.show_state
  player2.show_state
  tour += 1
end

winner = [player1, player2].max{ |a, b| a.life_points <=> b.life_points } #on regarde qui a gagné

puts "\nLe vainqueur de ce combat est #{winner.name} ! Il/Elle a gagné au bout de #{tour} tours" #on annonce le gagnant


require 'bundler' #appelle les gems nécéssaires 
Bundler.require

require_relative 'lib/game' #appelle les fichiers dans lib nécéssaires
require_relative 'lib/player' #appelle les fichiers dans lib nécéssaires

def introduction
player1 = Josiane
player2 = José 
	puts "A ma droite #{player1} et à ma gauche #{player2}"
end 



def state_before_fighting 
	show_state
	show_state_player2 
	puts "Voici l'état de chaque joueur : Josiane #{player1.show_state} et José #{player2.show_state}"
	while player1.life_points > 0 && player2.life_points > 0 
		do fight
	else puts "le combat est terminé" 

		def fight 
			puts "Passons à la phase d'attaque" 
				players1.attacks(player2)
					if player2 <= 0 
						break 
					else players2.attacks(player1)
		end 

end 

palyer1.

binding.pry #permet d'utiliser pry pour les tests 
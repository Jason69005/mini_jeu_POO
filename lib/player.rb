require "pry"

class Player

	attr_accessor :name, :life_points #cette ligne sert à lire et modifier les variables de class

	def initialize (name, life_points) #on définit les éléments à rentrer obligatoirement
	@name = name 
	@life_points = 10 #les points de vie sont les mêmes pour tous les players 
	end 

	def show_state #définition servant uniquement à indiquer les points de vie
	puts "#{name} a #{life_points} points de vie" 
	end 

		def gets_damage (damage) #définition servant à calculer le nombre de points de vie réstant après une attaque 
		@life_points = @life_points - damage
			if life_points <= 0 #condition qui indique que si le player n'a plus de point de vie alors il est considéré comme mort 
				puts "le joueur #{name} a été tué !"
			end 
		end  

	def attacks (player) #définition qui indique qu'un player attaque un autre
 		puts "#{self.name} attaque #{player.name}"
 		damage = compute_damage #ici on appelle la définition précédente => un coup a pour conséquence de baisser la vie du player attaqué 
 		player.gets_damage (damage) #ici on définit le player qui va avoir sa vie "baiser" suite au coup
 		puts "il lui inflige #{damage} de dommages"
 	end 

 	def compute_damage #définition donnée dans l'énoncé qui sert à définir la puissance d'un coup = le nombre de points de vie qu'il fera perdre à l'adversaire : entre 1 et  points 	
     	return rand(1..6)
  	end

end

binding.pry #checker le code grâce à "Pry"
puts "end of file"
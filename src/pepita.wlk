import ciudades.*

object pepita {
	var property energia = 100
	var property ciudad = buenosAires 

	var property posicion = game.at(3,3)
	method imagen() = "pepita.png"

	method come(comida) {
		energia = energia + comida.energia()
	}
	
	method volaHacia(unaCiudad) {
		if (ciudad = unaCiudad) {game.say(self, "Ya estoy en" + ciudad)}
		else {
			if (energia >= self.energiaParaVolar(posicion.distance(unaCiudad.posicion()))) {
				self.move(unaCiudad.posicion())
				ciudad = unaCiudad
			}
			else {game.say(self, "Dame de comer primero!")}
			}
		}
	}
	method teEncontro (alguien) {
		self.come (alguien.comidaQueLleva ())
		game.addVisualIn(alguien.comidaQueLleva(), game.at(5,6))
		alguien.comidaQueLleva (null)
	}
	method energiaParaVolar(distancia) = 15 + 5 * distancia

	method move(nuevaPosicion) {
		energia -= self.energiaParaVolar(posicion.distance(nuevaPosicion))
		self.posicion(nuevaPosicion)
	}	
}

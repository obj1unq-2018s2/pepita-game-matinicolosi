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
		if (ciudad != unaCiudad) {
			if (energia >= self.energiaParaVolar(posicion.distance(unaCiudad.posicion())) {
			}
			else {game.say(self, "Dame de comer primero!")}
			}
		else {game.say(self, "Ya estoy en" + ciudad)}
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

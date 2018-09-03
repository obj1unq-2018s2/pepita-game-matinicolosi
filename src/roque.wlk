object roque {
	var property comidaQueLleva = null
	var property posicion = game.at(1,1)
	method imagen() = "jugador.png"
	method levantarComida (comida) {
		if (comidaQueLleva != null) {
			game.addVisualIn (comidaQueLleva, posicion.up(1))
		}
		game.removeVisual (comida)
		comidaQueLleva = comida
	}
}

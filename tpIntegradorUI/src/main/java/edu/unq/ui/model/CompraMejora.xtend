package edu.unq.ui.model

import edu.unq.ui.model.validationRules.ReglaNoEsMejoraRepetida
import edu.unq.ui.model.validationRules.ReglaPuedePagar

class CompraMejora {
	
	Mejora mejora
	Jugador jugador
	Robot mejorable
	
	new  (Mejora mejora, Jugador jugador, Robot robot){
		this.mejora= mejora
		this.jugador=jugador
		this.mejorable= robot
	}
	
	def validar(){
		newArrayList(
		new ReglaPuedePagar(this.mejora, jugador), 
		new ReglaNoEsMejoraRepetida (mejora, mejorable))
		.forall[pasa]
	}
	
	def aplicar(){
		mejorable.mejorar(mejora)
		jugador.perder(mejora.costo)
	}
}
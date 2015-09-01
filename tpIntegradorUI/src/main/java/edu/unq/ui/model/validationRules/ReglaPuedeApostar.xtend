package edu.unq.ui.model.validationRules

import edu.unq.ui.model.Apuesta

class ReglaPuedeApostar implements ReglaDeValidacion {
	Apuesta apuesta
	
	new(Apuesta apuesta){
		this.apuesta=apuesta
		
	}
	
	override pasa() {
		apuesta.jugador.saldoDisponible *0.75 >= apuesta.costo()
	}
	
}
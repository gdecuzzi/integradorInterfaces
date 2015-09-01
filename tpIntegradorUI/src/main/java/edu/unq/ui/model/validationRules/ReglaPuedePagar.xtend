package edu.unq.ui.model.validationRules

import edu.unq.ui.model.validationRules.ReglaDeValidacion
import edu.unq.ui.model.Comprable
import edu.unq.ui.model.Jugador

class ReglaPuedePagar implements ReglaDeValidacion {
	Comprable comprable
	Jugador jugador
	
	new(Comprable comprable,Jugador jugador){
		this.comprable=comprable
		this.jugador=jugador
	}
	
	override pasa() {
		jugador.saldoDisponible>=comprable.costo
	}
	
}
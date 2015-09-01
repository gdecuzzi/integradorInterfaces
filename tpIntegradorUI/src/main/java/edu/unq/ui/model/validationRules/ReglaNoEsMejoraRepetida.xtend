package edu.unq.ui.model.validationRules

import edu.unq.ui.model.Mejora
import edu.unq.ui.model.Robot

class ReglaNoEsMejoraRepetida implements ReglaDeValidacion {
	
	Mejora mejora
	Robot robotito
	
	new (Mejora mejora, Robot robotito){
		this.mejora=mejora
		this.robotito=robotito
	}
	
	override pasa() {
		!robotito.mejoras.contains(mejora)
	}
	
	
}
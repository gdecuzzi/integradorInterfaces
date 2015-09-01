package edu.unq.ui.model.validationRules

import edu.unq.ui.model.validationRules.ReglaDeValidacion
import edu.unq.ui.model.Robot
import edu.unq.ui.model.Reparacion

class ReglaPuedeReparar implements ReglaDeValidacion {
	Reparacion reparacion
	Robot robot
	
	new(Reparacion reparacion,Robot robot){
		this.reparacion=reparacion
		this.robot=robot
	}
	
	override pasa() {
		robot.nivelDeterioro>=reparacion.porcentajeReparacion
	}
	
}
package edu.unq.ui.model

import edu.unq.ui.model.validationRules.ReglaPuedeApostar
import org.eclipse.xtend.lib.annotations.Accessors

@Accessors 
class Apuesta implements Comprable {
	double costo
	Jugador jugador
	
	new (double cantidad, Jugador jugador){
		costo=cantidad
		this.jugador= jugador
	}
	
	override costo() {
		costo
	}
	//porqué tengo que hacer ésto? si el objeto ya tiene un mensaje llamado costo()
	 
	def validar(){
		newArrayList(
		new ReglaPuedeApostar(this))
		.forall[pasa]
	}
	
	def aplicar(Resultado resultadoPelea){
		if(resultadoPelea.ganador.duenio== jugador){
			jugador.ganar(costo)
		}else {
			jugador.perder(costo)
		}
	}
	
	
	
}
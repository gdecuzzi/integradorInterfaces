package edu.unq.ui.model

import org.eclipse.xtend.lib.annotations.Accessors
import edu.unq.ui.model.validationRules.ReglaDeValidacion
import java.util.ArrayList
import edu.unq.ui.model.validationRules.ReglaPuedePagar
import edu.unq.ui.model.validationRules.ReglaPuedeReparar
import static extension java.util.Collections.*

@Accessors
class Reparacion implements Comprable {
	
	Robot robotAReparar
	double porcentajeReparacion
	
	new (Robot roto, double porcRep){
		robotAReparar= roto
		porcentajeReparacion= porcRep
	}
	
	def aplicar(){
		
		robotAReparar.duenio.perder(costo)
		robotAReparar.reparar(porcentajeReparacion)
	}
	
	override costo(){
		porcentajeReparacion*100*25
	}
	
	
	def validar(){
		newArrayList(
		new ReglaPuedePagar(this,robotAReparar.duenio),
		new ReglaPuedeReparar(this,robotAReparar)
		).forall[pasa]
	}
	
	
		
}
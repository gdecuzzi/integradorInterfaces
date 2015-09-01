package edu.unq.ui.model

import org.eclipse.xtend.lib.annotations.Accessors

@Accessors
class Resultado {
	val Robot ganador
	val Robot perdedor
	
	new(Robot ganador, Robot perdedor){
		this.ganador=ganador
		this.perdedor=perdedor
	} //hablando con ella, maldita maldita maldita >_<
	// "no se si a la tarde salga" >_<
	
}
package edu.unq.ui.model

import org.eclipse.xtend.lib.annotations.Accessors

@Accessors
class Mejora implements Comprable {
	String descripcion
	double porcentaje
	double costoMejora
	
	new (String descripcion,double porcentaje,double costo){
		this.descripcion=descripcion
		this.porcentaje=porcentaje
		this.costoMejora=costo
	}
	
	override costo() {
		costoMejora
	}
	
}
package tpIntegrador

import org.eclipse.xtend.lib.annotations.Accessors

@Accessors 
class Robot {

var String nombreRobot
var int poder
var int deterioro

new(String nombre){
	nombreRobot= nombre
	poder=100
	deterioro= 0
}


def aplicarMejora(Mejora elegida){
	var int poderAnterior= getPoder
	setPoder(poderAnterior+elegida.porcentajeMejora)
}

	
}
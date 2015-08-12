package tpIntegrador

import org.eclipse.xtend.lib.annotations.Accessors

@Accessors
class Mejora {
	var String descripcion
	var int porcentajeMejora
	var int precio
	
	new (String descrip, int mejora, int price){
		descripcion=descrip
		porcentajeMejora=mejora
		precio=price
	}
	
	}
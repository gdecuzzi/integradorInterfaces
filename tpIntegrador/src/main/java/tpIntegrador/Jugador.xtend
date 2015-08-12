package tpIntegrador

import org.eclipse.xtend.lib.annotations.Accessors
import java.util.List
import java.util.ArrayList

@Accessors 
class Jugador {
	var String nombre
	var int dinero
	var List<Robot> misRobots
	var Reparacion tipoReparacion
	
	new(String nombreJug){
		nombre= nombreJug
		dinero=0
		misRobots= new ArrayList<Robot>()
	}
	
	def setReparacion(Reparacion tipo){
		tipoReparacion=tipo
	}
	
	/* preguntar si hace falta mas cosas aca. */
	def comprarRobot(Robot robotNuevo){
		misRobots.add(robotNuevo)
	}
	
	def repararRobot(Robot robotRoto){
		tipoReparacion.reparar(robotRoto, this)
	}
	
	def mejorarRobot(Robot robotAMejorar, Mejora elegida){
		descontarSaldo(elegida.precio)
		robotAMejorar.aplicarMejora(elegida)
	}
	
	def descontarSaldo(int precioMejora){
		dinero-precioMejora
	}
	
}
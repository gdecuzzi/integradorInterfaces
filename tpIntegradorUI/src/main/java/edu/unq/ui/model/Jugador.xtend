package edu.unq.ui.model

import java.util.ArrayList
import java.util.List
import org.eclipse.xtend.lib.annotations.Accessors

@Accessors 
class Jugador {
	String nombre
	var double saldoDisponible
	List<Robot> robots
	
	
	new (String nombreJugador){
		nombre=nombreJugador
		saldoDisponible= 5000
		robots= new ArrayList<Robot> ()
	}
	
	def ganar(double monto){
		saldoDisponible+=monto
	}
	
	def perder(double monto){
		saldoDisponible-=monto
	}
	
	
	
}
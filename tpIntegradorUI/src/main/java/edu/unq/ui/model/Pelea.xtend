package edu.unq.ui.model

import org.eclipse.xtend.lib.annotations.Accessors

@Accessors
class Pelea {
	Robot robot1
	Robot robot2
	Apuesta apuesta
	
	new (Robot robotA, Robot robotB, Apuesta hecha){
		robot1= robotA
		robot2= robotB
		apuesta= hecha
	}
	
	def pelear(){
		val resultado=robot1.resultadoPelea(robot2)
		desgastar
		resolverApuesta(resultado)
	}
	
	private def desgastar(){
		robot1.daniar(Math.max(0.05,robot1.poder-robot2.poder))
	}
	
	private def resolverApuesta(Resultado res){
		if (robot1==res.ganador){
			robot1.duenio.ganar(apuesta.getCosto*(robot1.poder+robot2.poder)/robot1.poder)
		}
	}
	
}
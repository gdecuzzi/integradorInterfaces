package edu.unq.ui.model

import java.util.ArrayList
import java.util.List
import org.eclipse.xtend.lib.annotations.Accessors

import static extension java.util.Collections.*

@Accessors
class Robot {
	String nombre
	double poderBase
	var double nivelDeterioro
	var Jugador duenio
	List<Mejora> mejoras
	
	new (String nombreRobot,double poderBase){
		nombre=nombreRobot
		this.poderBase=poderBase
		nivelDeterioro=0
		mejoras=new ArrayList<Mejora>()
	}
	
	def reparar(double porcentaje) {
		nivelDeterioro-=porcentaje
	}
	
	def daniar(double porcentaje){
		nivelDeterioro+=porcentaje
	}
	
	def poder(){
		poderTotal*(1-nivelDeterioro)/100
	} 
	
	//comprarRobot!!!
	
	private def poderTotal(){
		poderBase*(1+porcentajeMejora)
	} //se calcula aca la mejora.
	
	def resultadoPelea(Robot robot) {
		if(ganeContra(robot)){
			new Resultado(this,robot)
		}else{
			new Resultado(robot,this)
		}
	}
	
	private def ganeContra(Robot robot) {
		randomNumber()<=poder/(poder+robot.poder)
	}
	
	private def randomNumber() {
		Math.random
	}
	
	private def porcentajeMejora(){
		var double porcentaje=0
		for(Mejora mejora : mejoras){
			porcentaje+=mejora.porcentaje
		}
		porcentaje
	}
	
	def mejorar(Mejora mejora){
		mejoras.add(mejora)
	}
	
	
}
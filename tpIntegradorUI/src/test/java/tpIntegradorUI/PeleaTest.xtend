package tpIntegradorUI

import edu.unq.ui.model.Apuesta
import edu.unq.ui.model.Jugador
import edu.unq.ui.model.Pelea
import edu.unq.ui.model.Resultado
import edu.unq.ui.model.Robot
import org.junit.Assert
import org.junit.Before
import org.junit.Test

class PeleaTest {
	
	Pelea peleaNueva
	Robot robot1
	Robot robot2
	Apuesta apuesta
	Resultado resultadoPelea
	Jugador apostador
	
	@Before
	def void setUp(){
		
		apostador= new Jugador("apostador")
		robot1= new Robot("Robocop", 3000)
		robot2= new Robot ("Robotina", 2500)	
		apuesta= new Apuesta(250,apostador)	
		
		apostador.robots.add(robot1)
		robot1.duenio=apostador
		
	}
	
	@Test
	def void pelearTestTodoBienGanadorApostador(){
		peleaNueva= new Pelea(robot1, robot2, apuesta)
		peleaNueva.pelear
		resultadoPelea= robot1.resultadoPelea(robot2)
		Assert.assertEquals(robot1,resultadoPelea.ganador)
		
	}
	
	@Test
	def void pelearTestPerdedorApostador(){
		val robot3= new Robot("invencible", 4000)
		peleaNueva= new Pelea(robot1, robot3, apuesta)
		peleaNueva.pelear
		resultadoPelea= robot1.resultadoPelea(robot3)
		Assert.assertEquals(robot1, resultadoPelea.perdedor)
	
	}
	
	
}
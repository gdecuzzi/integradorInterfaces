package tpIntegradorUI

import edu.unq.ui.model.Mejora
import edu.unq.ui.model.Robot
import org.junit.Assert
import org.junit.Before
import org.junit.Test

/**
  * No se testea resultadosRobot(Robot robot) ya que contiene un random
  * y las cosas random no se testean.
  */
  
class RobotTest {
Robot pepito

@Before

def setUp(){
	pepito= new Robot("Pepito", 2000)
	pepito.setNivelDeterioro(0.3)
}
	
	
	@Test
	def repararRobotTest(){
		pepito.reparar(0.3)
		Assert.assertEquals(0, pepito.nivelDeterioro, 0)
	}
	
	@Test
	def daniarRobotTest(){
		pepito.daniar(0.3)
		Assert.assertEquals(0.6, pepito.nivelDeterioro, 0)
	}
	
	@Test
	def poderTestRobotDaniado(){
		
		Assert.assertEquals(14, pepito.poder, 0)
	}
	
	@Test
	def poderTestRobotSano(){
		val Robot sano= new Robot("Sano", 3000)
		Assert.assertEquals(30, sano.poder, 0)
	}
	
	@Test
	def robotAgregaMejoraTieneMasPoder(){
		val Mejora mejora= new Mejora ("masPoder", 0.2,200)
		val poderAnterior= pepito.poder()
	
		pepito.mejorar(mejora)
		
		val poderActual= pepito.poder
		
		Assert.assertTrue (poderAnterior<poderActual)
	}
	
}
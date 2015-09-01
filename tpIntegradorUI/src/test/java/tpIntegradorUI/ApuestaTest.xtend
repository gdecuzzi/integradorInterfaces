package tpIntegradorUI

import edu.unq.ui.model.Apuesta
import edu.unq.ui.model.Jugador
import edu.unq.ui.model.Resultado
import edu.unq.ui.model.Robot
import org.junit.Assert
import org.junit.Before
import org.junit.Test

class ApuestaTest {
	
	Jugador apostador
	Apuesta apuesta
	Robot robotitoGanador
	Robot perdedor
	
	@Before
	def void setUp() {
		apostador= new Jugador("apostador")
		apuesta= new Apuesta(100,apostador)
		
		robotitoGanador= new Robot ("robotito",3000)
		perdedor= new Robot ("perdedor", 2000)
		apostador.robots.add(robotitoGanador)
		robotitoGanador.setDuenio(apostador)
	
	}
	
	@Test
	def validarTestCorrecto(){
		
		Assert.assertTrue(apuesta.validar)
	}
	
	@Test
	def validarTestSaldoNoDisponible(){
		val apuestaErronea= new Apuesta (6000, apostador)
		Assert.assertFalse(apuestaErronea.validar)
	}
	
	@Test
	def aplicarApuestaTestJugadorGanador(){
	
		val resultado= new Resultado(robotitoGanador,perdedor)
		apuesta.aplicar(resultado)
		Assert.assertEquals(5100,apostador.saldoDisponible, 0)
	}
	
	@Test
	def aplicarApuestaTestJugadorPerdedor(){
		var	otroResultado= new Resultado(perdedor,robotitoGanador)
		apuesta.aplicar (otroResultado)
		Assert.assertEquals(4900, apostador.saldoDisponible, 0)
	}
	
	
	
}
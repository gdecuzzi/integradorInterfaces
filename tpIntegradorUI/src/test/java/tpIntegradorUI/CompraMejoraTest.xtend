package tpIntegradorUI

import edu.unq.ui.model.CompraMejora
import edu.unq.ui.model.Jugador
import edu.unq.ui.model.Mejora
import edu.unq.ui.model.Robot
import org.junit.Assert
import org.junit.Before
import org.junit.Test

class CompraMejoraTest {
	Mejora mejora
	Jugador comprador
	Robot mejorable
	CompraMejora  mejoraComprable
	
	@Before
	def void setUp(){
		mejora= new Mejora("mejora", 0.2, 250)
		 comprador= new Jugador("comprador" )
		mejorable= new Robot("robotMejorable", 2500)
		 mejoraComprable= new CompraMejora(mejora,comprador,mejorable)
	}
	
	
	@Test
	def validarMejoraTestCorrecto(){
		Assert.assertTrue(mejoraComprable.validar())
	}
	
	@Test
	def void validarMejoraJugadorSinSaldoSuficiente(){
		val Jugador jugadorPobre= new Jugador("pobre")
		jugadorPobre.perder(4800)
		val mejoraComprable= new CompraMejora(mejora, jugadorPobre,mejorable)
		Assert.assertFalse(mejoraComprable.validar())
	}
	
	@Test
	def void validarMejoraRobotYaTieneEsaMejora(){
		mejorable.mejorar(mejora)
		Assert.assertFalse(mejoraComprable.validar())
	}
	
	@Test
	def aplicarMejoraTest(){
		mejoraComprable.aplicar()
		Assert.assertTrue(mejorable.mejoras.contains(mejora))
		Assert.assertEquals(4750, comprador.saldoDisponible, 0)
	}
}
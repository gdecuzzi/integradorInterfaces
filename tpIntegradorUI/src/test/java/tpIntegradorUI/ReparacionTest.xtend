package tpIntegradorUI

import edu.unq.ui.model.Jugador
import edu.unq.ui.model.Reparacion
import edu.unq.ui.model.Robot
import org.junit.Assert
import org.junit.Before
import org.junit.Test

class ReparacionTest {
	
	Reparacion reparacionActual
	Jugador duenio
	Robot robotRoto
	double porcentajeReparacion
	
	@Before
	def void setUp(){
		porcentajeReparacion= 0.25
		duenio= new Jugador("Stefania")
		robotRoto= new Robot ("Robotito", 2500)
		robotRoto.duenio=duenio
		reparacionActual= new Reparacion(robotRoto,porcentajeReparacion)
		
		robotRoto.nivelDeterioro = 0.3
	}
	
	@Test
	def void aplicarTest(){
		
		reparacionActual.aplicar()
		
		Assert.assertEquals(duenio.saldoDisponible,4375, 0)
		Assert.assertEquals(robotRoto.nivelDeterioro,0.5, 1)
		
	}
	
	@Test
	def void validarTestCorrecto(){
       
		Assert.assertTrue(reparacionActual.validar)
		
	}
	
	@Test
	def void validarTestElRobotEstaSano(){
		robotRoto.nivelDeterioro=0
		
		Assert.assertFalse(reparacionActual.validar())
	}
	
	
	@Test
	def void validarTestNoTengoSuficienteSaldo(){
		robotRoto.duenio.perder(4400)
		
		//Assert.assertEquals(625,reparacionActual.costo,0)
		Assert.assertFalse(reparacionActual.validar())
		
	}
	
	@Test
	def void costoTest(){
		Assert.assertEquals(625,reparacionActual.costo,0)
	}
	
	
	
}
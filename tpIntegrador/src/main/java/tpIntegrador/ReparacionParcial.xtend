package tpIntegrador

class ReparacionParcial extends Reparacion {
	var int porcentajeReparacion
	
	override reparar(Robot roto, Jugador duenio) {
		var int poderAnterior= roto.getPoder
		roto.setPoder(poderAnterior+porcentajeReparacion)
		var saldoPosterior= duenio.getDinero-gastoReparacion(porcentajeReparacion)
	}
	
	def gastoReparacion(int porcentajeReparacion){
		porcentajeReparacion*25
	}
	
}
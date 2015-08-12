package tpIntegrador

class ReparacionTotal extends Reparacion {
	
	override reparar(Robot roto, Jugador duenio) {
		roto.setPoder(100)
		roto.setDeterioro(0)
	}
	
}
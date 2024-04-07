// PAQUETE
object paqueteDeGeorge {

	var property envioPagado = true
	var property destino = brooklyn
	var property mensajero = chuckNorris
	
	method puedeSerEntregado() {
		return envioPagado and destino.puedePasar(mensajero)
	}
	
}

// DESTINOS
object brooklyn {

	method puedePasar(mensajero) {
		return mensajero.pesoTotal() <= 1000
	}

}

object laMatrix {

	method puedePasar(mensajero) {
		return mensajero.puedeLlamar()
	}

}

//MENSAJEROS 
object chuckNorris {

	const property pesoTotal = 900
	const property puedeLlamar = true

}

object neo {

	const property pesoTotal = 0
	var property tieneCredito = true

	method puedeLlamar() {
		return self.tieneCredito() 
	}
}

object lincolnHawk {
	
	var property pesoLincoln = 60
	var property vehiculo = bicicleta 
	const property puedeLlamar = false
	
	method pesoTotal() {
		return pesoLincoln + vehiculo.peso()
	}	
}

// VEHICULOS 

object bicicleta {

	const property peso = 10

}

object camion {

	const property pesoSinAcoplados = 500
	var property acoplados = 0
	
	method peso() {
		return pesoSinAcoplados + self.pesoDeAcoplados()
	}
	
	method pesoDeAcoplados() {
		return acoplados * 500 
	}

}


class Vendedor {
	method ciudadTrabaja()
	
	
}

class Fijo inherits Vendedor {
	var property ciudadVive
	
	override method ciudadTrabaja() {
		return self.ciudadVive()	
	}
	
	
}


class Viajante inherits Vendedor {
	var provinciaHabilitada = []
	
	method agregarProvinciaViajante(prov) {
		provinciaHabilitada.add(prov)
	}
//Viajante: cada viajante está habilitado para trabajar en algunas provincias, se sabe cuáles son.	
	override method ciudadTrabaja() {
		return 
	}
	
}


class Comercio inherits Vendedor {
/*Comercio corresponsal: son comercios que tienen sucursales en distintas ciudades. 
 * Se sabe, para cada comercio corresponsal, en qué ciudades tiene sucursales.
 */	
	var ciudadesComercio = []
	
	method agregarCiudades(ciud) {
		ciudadesComercio.add(ciud)
	}
	
	 
	override method ciudadTrabaja() {
		return ciudadesComercio
	}
}






///*De cada vehículo nos van a interesar: capacidad 
// * (o sea, cantidad de pasajeros que pueden transportar), 
// * velocidad máxima, color y peso. */
// 
//class Corsa {
//	/*La capacidad es 4 pasajeros en los 3, la velocidad máxima de 150 km/h y pesan 1300 kg */
//	var property colorCorsa
//	method capacidad() {
//		return 4
//	}
//	method velocidadMaxima() {
//		return 150
//	}
//	method peso() {
//		return 1300
//	}
//	
//	method color(){
//		return colorCorsa
//	}
//	
//}
//
//class Standard {
//	/*que funcionan a gas, uno de color grisy otro verde.*/
//	var colorStandard = "azul"
//	var tieneTanque = false
//	
//	method color(){
//		return colorStandard
//	}
//	
//	/* Cada uno de ellos puede tener puesto, o no, un tanque adicional. */
//	method tieneTanqueAdicional(){
//		tieneTanque = true
//	}
//	
//	/*La capacidad de un auto a gas es de 4 pasajeros si no tiene puesto el tanque adicional, 
//	 * o 3 pasajeros si sí lo tiene puesto.  */
//	method capacidad() {
//		if (tieneTanque) {
//			return 3
//		}
//			else {return 4}
//	}
//	
//	/*La velocidad máxima es 120 km/h con, o 110 km/h sin, tanque adicional.  */
//	method velocidadMaxima() {
//		if (tieneTanque) {
//			return 120
//		}
//			else {return 110}
//	}
//	
//	/*El peso es 1200 kg, más 150 kg adicionales si tiene tanque adicional. */
//	method peso(){
//		if (tieneTanque) {
//			return 1350
//		}
//			else {return 1200}
//	}
//
//}
//
//object trafic { //porque hay una sola
//	var interior = null	
//	var motor = null	
//	const pesoTotal = 4000
//	const color = "blanco"
//  	
//	method interiorComodo(){interior = comodo}
//	method interiorPopular() {interior = popular}
//
//	method motorBataton() { motor = bataton}
//	method motorPulenta() { motor = pulenta}
//
//	method capacidad() {
//		return interior.capacidad()
//	}
//	
//	method velocidadMaxima() {
//		return motor.velocidad()
//	}
//	
//	method color() {
//		return color
//	}
//
//	method peso() {
//		return motor.peso() + interior.peso() + pesoTotal
//		}
//}
// 
//object comodo {
//	method capacidad() {
//		return 5
//	}
//	method peso() {
//		return 700
//	}
//}
//object popular {
//	method capacidad() {
//		return 12
//	}
//	method peso() {
//		return 1000
//	}
//}
//
//object pulenta {
//	method velocidad() {
//		return 130
//	}
//	method peso() {
//		return 800
//	}
//}
//object bataton {
//	method velocidad() {
//		return 80
//	}
//	method peso() {
//		return 500
//	}
//}  
//
//
//class AutosDistintos {
//	
//	var property capacidad
//	var property velocidadMaxima
//	var property peso
//	var property color
//	
//	method color() {
//		return color
//	}
//	
//	method capacidad() {
//		return capacidad
//	}
//	
//	method velocidadMaxima() {
//		return velocidadMaxima
//	}
//	
//	method peso() {
//		return peso
//	}
//}
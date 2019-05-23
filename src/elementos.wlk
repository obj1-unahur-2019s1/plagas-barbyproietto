class Hogar {
	var property mugre = 0
	var property confort = 0
	
	method esBueno(){
		return mugre / 2 <= confort
		}
	
}

class Huerta {
	var property produccion = 0
	var property nivel = 0
	
	method esBueno(){
		return produccion > nivelHuerta.nivel()
	}
}

 object nivelHuerta{
 	var property nivel = 20
 	
 }

class Mascota {
	var property nivelSalud = 0
	
	method esBueno(){
		return nivelSalud > 250
	}
}

class Barrios {
	var elementos= []
	
	method agregarElemento(elemento){
		return elementos.add(elemento)
	}
	
	method agregarElementos(elemento){
		return elementos.addAll(elemento)
	}
	
	
	method elementosBuenos(){
		return elementos.filter({elemento => elemento.esBueno()}).size()
	}
	
	method elementosMalos(){
		return elementos.filter({elemento => not elemento.esBueno()})
	}
	
	method esCopado(){
		 return self.elementosBuenos() > self.elementosMalos().size() 
	}
}
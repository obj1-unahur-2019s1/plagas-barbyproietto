class Cucarachas {
	var property poblacion = 0
	var property pesoPromedio = 0
	
	
	
	method transmiteEnfermedad(){
		return poblacion <= 10 and pesoPromedio >= 10 
	}
	
	method nivelDanio(){
		return poblacion / 2
		
	}
	method atacar(elemento){
		poblacion = (poblacion * (10/100))
		pesoPromedio = pesoPromedio + 2
	}
}

class Pulga {
	var property poblacion = 0
	
	method nivelDanio(){
		return poblacion * 2
	}
	
	method transmiteEnfermedad(){
		return poblacion <=10
	}
	method atacar(elemento){
		poblacion = (poblacion * (10/100))
	}

}

class Mosquito {
	var property poblacion = 0
	
	method nivelDanio(){
		return poblacion 
	}
	
	method transmiteEnfermedad(){
		return poblacion % 3 and poblacion <= 10
	}
} 
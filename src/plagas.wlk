class Plaga {
	var property poblacion
	method transmiteEnfermedad(){ return poblacion >= 10}
	method atacar(elemento){
		poblacion = (poblacion * (10/100))
		elemento.fueAtacada(self)
		
	}
}

class PlagaCucarachas inherits Plaga {
	var property pesoPromedio = 0
	
	
	override method transmiteEnfermedad(){
		return super() and pesoPromedio >= 10 
	}
	
	method nivelDanio(){
		return poblacion / 2
		
	}
	override method atacar(elemento){
		pesoPromedio = pesoPromedio + 2
		super(elemento)
		
	}
}

class PlagaPulga inherits Plaga {
		
	method nivelDanio(){
		return poblacion * 2
	}
	
 /*   override method transmiteEnfermedad(){
    	return poblacion >= 10
    }
    
    override method atacar(elemento){
		poblacion = (poblacion * (10/100))
	}*/
}

class PlagaGarrapata inherits Plaga{
	
	method nivelDanio(){
		return poblacion * 2
	}
	
	override method atacar(elemento){
		poblacion = (poblacion * (20/100))
		elemento.fueAtacado()
		
	}
}

class PlagaMosquito inherits Plaga {
	
	method nivelDanio(){
		return poblacion 
	}
	
	override method transmiteEnfermedad(){
		return poblacion % 3 and super()
	}
	
	/*override method atacar(elemento){
		poblacion = (poblacion * (10/100))
	}*/
} 
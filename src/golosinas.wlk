object bombon {
	var peso = 15
	
	method precio() { return 5 }
	method peso() { return peso }
	method mordisco() { peso = 0.max(peso * 0.8 - 1) }
	method gusto() { return "frutilla" }
	method libreGluten() { return true }
}

object alfajor {
	var peso = 300
	
	method precio() { return 12 }
	method peso() { return peso }
	method mordisco() { peso = 0.max(peso * 0.8) }
	method gusto() { return "chocolate" }
	method libreGluten() { return false}
}

object caramelo {
	var peso = 5
	
	method precio() { return 1 }
	method peso() { return peso }
	method mordisco() { peso = 0.max(peso * 0.8) }
	method gusto() { return "frutilla" }
	method libreGluten() { return true }
}

object chupetin {
	var peso = 7
	
	method precio() { return 2}
	method peso() { return peso }
	method mordisco() { 
	  if(self.peso() >2){peso = 0.max(peso * 0.9)}
	  
	}
	method gusto() { return "naranja" }
	method libreGluten() { return true }
}

object oblea {
	var peso = 250
	
	method precio() { return 5}
	method peso() { return peso }
	method mordisco() { 
		if(peso >70){peso = 0.max(peso * 0.5)}
		   else{peso = 0.max(peso * 0.75)}
	}
	method gusto() { return "vainilla" }
	method libreGluten() { return false} 
}

object chocolatin {
	var pesoInicial
	var pesoActual
	
	method peso(cuanto) { 
		pesoInicial = cuanto
		pesoActual = cuanto
	}
	method peso() { return pesoActual }
	method precio() { return pesoInicial * 0.5}	
	method mordisco() { pesoActual = pesoActual *0.8 }
	method gusto() { return "chocolate" }
	method libreGluten() { return false}
	
}

object golosinaBaniada {
	var golosinaInterior
	var pesoBanio = 4
	
	method baniaA(unaGolosina) { golosinaInterior = unaGolosina }
	method precio() { return golosinaInterior.precio() + 2}
	method peso() { return golosinaInterior.peso() + 4 }
	method mordisco() {
		golosinaInterior.mordisco()
		if (pesoBanio > 0) { pesoBanio -= 2 }
		// otra forma de hacer la cuenta: pesoBanio = (pesoBanio - 2).max(0) 
	}	
	method gusto() { return golosinaInterior.gusto() }
	method libreGluten() { return golosinaInterior.libreGluten()}	
}

object tuttifrutti {
	const property peso=5
	const gustos=["frutilla", "chocolate", "naranja"]
	var property libreGluten= false
	var cantMordiscos=0
	method precio()= if (libreGluten) 7 else 10// el = representa el return
	//method gustos() { return  gustos.get(cantMordiscos%gustos.size())}
	
}


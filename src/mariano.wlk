object mariano {
	
	var golosinas= []
	var golosinasDesechadas =[]
	
	
	method comprar(golosina) { golosinas.add(golosina)}
	method comprarVarias(unaLista){golosinas.addAll(unaLista)}
	method vaciarBolsa(){golosinas.clear()}
	method desechar (unaGolosina){
		golosinas.remove(unaGolosina)
		golosinasDesechadas.add(unaGolosina)
	}
	method cantGolosinas() {golosinas.size()}
	method tieneLaGolosina(unaGolosina){return golosinas. contains(unaGolosina)}
	
	method golosinas() {
		/* cambiar por la implementacion correcta */ 
		return [] 
	}
	
	method probarGolosinas() {
		golosinas.forEach ({g =>  g.mordisco()})
		                    //console.println("gusto: +g.gusto()+")
	}	
	method hayGolosinaSinTac(){ return  golosinas.any({ g => g.libreGluten()})}
	
	method hayGolosinaSinTacConAll(){ return  !golosinas.all({ g => g.libreGluten()})}// se niega afuera con !
	
	method preciosCuidados(){return golosinas.all( {g => g.precio() <= 10 })}
	
	method preciosCuidadosConAny(){ return !golosinas.any( {g => g.precio() > 10 })}
	
	method golosinaDeSabor(unSabor){return golosinas.find({g => g.gusto()== unSabor})}
	
	method golosinasDeSabor(unSabor){ return golosinas.filter({g => g.gusto()== unSabor})}
	
	method sabores(){return golosinas.map({g => g.gusto()}).asSet()}// asSet() es para convetir en conjunto y quitar los duplicados
	
	method golosinaMaCara(){return  golosinas.max({g => g.precio()})}
	
	method golosinaMasCaraConMap(){return golosinas.map({g => g.precio() }).max()}
	
	method precioGolosinaMasCara(){return self.golosinaMaCara().precio() }
	
	method peoGolosinas(){golosinas.sum({g => g.peso()})}
	
	method golosinasFaltantes(golosinasDeseadas){ return golosinasDeseadas.asSet().difference(golosinas.asSet())}
	
	method gustosFaltantes(gustosDeseados){return gustosDeseados.asSet().difference(self.sabores())}
	
	method gastoEn(sabor){return self.golosinasDeSabor(sabor).sum({g => g.precio()})}
	
	method precioGolosinaMasCaraDeSabor(sabor){return self.golosinasDeSabor(sabor).max({g => g.precio()}).precio()}
	
	method cantGolosinasDeSabor(unSabor){return self.golosinasDeSabor(unSabor).size()}
	
	method saborMasPopular(){return self.sabores().max( {sabor => self.cantGolosinasDeSabor(sabor)})}
	
	method ComproYDesecho(golosina){golosinasDesechadas.contains(golosinas)}
}



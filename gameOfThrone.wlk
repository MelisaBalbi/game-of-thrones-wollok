object castillo {
	const property artefactos = #{}

	method agregarArtefactos(_artefactos) {
		artefactos.addAll(_artefactos)		
	}
}

object dany{
	
	var property poderBase = 5
		
	const property artefactos = #{}
	var property capacidad = 2
	const property casa = castillo
	const property historia = []

	method encontrar(artefacto) {
		if(artefactos.size() < capacidad) {
			artefactos.add(artefacto)
		}
		historia.add(artefacto)
	}
	
	method volverA(lugar) {
		lugar.agregarArtefactos(artefactos)
		artefactos.clear()
	}	
	
	method posesiones() = self.artefactos() + casa.artefactos()

	method tiene(artefacto) = self.posesiones().contains(artefacto)	

	method batalla(){
		poderBase +=1
		self.artefactos().forEach{artefacto => artefacto.usar() }
	}

	method poder(){
		return self.poderBase() + self.artefactosSumadePoder()
	}

	method artefactosSumadePoder(){
		var sumaPoderes=0
		self.artefactos().forEach{artefacto => sumaPoderes += artefacto.poder(self) }
		return sumaPoderes
	}

	method tieneArmaFatal(enemigo) {
		var tiene= false
		self.artefactos().forEach { artefacto => if (artefacto.poder(self) > enemigo.poderPelea()) {
			tiene = true
		}
	}return tiene
	}

	method armaFatal(enemigo){
		return self.artefactos().find({artefacto => artefacto.poder(self) > enemigo.poderPelea()})
	}
	/*method armaFatal(enemigo) {
        var artefactoFatal = null
        self.artefactos().forEach { artefacto => if (artefacto.poder(self) > enemigo.poderPelea()) {
            artefactoFatal = artefacto
            }
        }return artefactoFatal
    }
}*/
}

object libro {
	var property hechizos = ["bendicion", "invisibilidad", "invocacion"]
	method poder(personaje) {
		var result = 0

		if (!hechizos.isEmpty()) {
			var hechizoActual = hechizos.first()

			if (hechizoActual == "bendicion") {
				result = 4
			} else if (hechizoActual == "invisibilidad") {
				result = personaje.poderBase()
			} else if (hechizoActual == "invocacion") {
				var poderes = []
				personaje.casa().artefactos().forEach { a => poderes.add(a.poder(personaje))
				}
				if (!poderes.isEmpty()) {
					result = poderes.max()
				}
			}
		}return result
}
	method usar() {
		if (!hechizos.isEmpty()) {
			hechizos = hechizos.drop(1)
		}
	}
}
object espada {
	var vecesUsado =0
	var yaUsado = false

	method poder(personaje) {
		if (yaUsado) {
			return personaje.poderBase()*0.5
		} else {
			yaUsado = true
			return personaje.poderBase()
		}
	}
	method usar(){
		vecesUsado +=1
		yaUsado = true
	}
}

object collar {
	var vecesUsado = 0

	method poder(personaje) {
		var poderBase = 3
		if (personaje.poderBase() > 6) {
			return poderBase + vecesUsado
		} else {
			return poderBase
		}
	}
	method registrarUso() {
		vecesUsado = vecesUsado + 1
	}
	method usar(){
		vecesUsado += 1
	}
}

object armadura {
	var vecesUsado = 0
	const property poder = 6
	method poder(personaje) {
		return poder
	}
	method usar(){
		vecesUsado += 1
	}

}

object cersei{
	var property poderPelea = 16
	const property morada = "palacio"
}

object jon{
	var property poderPelea = 28
	const property morada = "invernalia"
}

object arya{
	var property poderPelea = 14
	const property morada = "torre"
}

object westeros{
	const property enemigos= #{cersei, jon, arya}

	method enemigosVencibles(personaje) {
		var vencibles = #{}
		enemigos.forEach {enemigo => if (enemigo.poderPelea() < personaje.poder()) {
				vencibles.add(enemigo)
			}
		}
		return vencibles
	}
	method moradasConquistables(personaje){
		var moradas = #{}
		self.enemigosVencibles(personaje).forEach { enemigo => moradas.add(enemigo.morada())}
		return moradas
	}
	method poderoso(personaje) {
	  if(personaje.poderBase() >= 10){
		return true
	  }else{
		return false
	  }
	}

}
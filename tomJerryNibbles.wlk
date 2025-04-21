object tom {

var energia = 50

//velocidad maxima que puede correr
method velocidadMaxima() = 5 + (energia/10)
// la energia varia segun vay comiendo ratones

method comer(raton) {
    energia += 12 + raton.peso()
}

method correr(distancia) {
  // energia = energia - distancia / 2 es igual a la sig definicion
    energia -= distancia / 2
}

// Parte 2 Poder Cazar y comer

    // Energia Necesaria >= Energia Disponible
method puedeCazar(distancia) = energia >= ( distancia / 2 )
    


method cazar(raton , distancia) {
    if (self.puedeCazar(distancia))
        self.correr(distancia)
        self.comer(raton)
}

}

object jerry {
    var edad = 2

    method peso() = edad * 20

    method cumplirAnios() {
    edad += 1
}
}

object nibbles {
    method peso() = 35
}

// Inventar otro ratón

object perez {
    var fondosDisponibles = 10000
    var cantidadDeDientesRecolectados = 0
  method peso() = 15 + ( cantidadDeDientesRecolectados * 0.5 )

    method canjearDiente() {
        cantidadDeDientesRecolectados += 1
        fondosDisponibles -= 1000
    }

}
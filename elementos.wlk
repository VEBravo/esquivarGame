const anchoDelJuego = 30
const altoDelJuego = 20
const tamanioCelda = 50

class Meteorito {
    var position = game.at(1.randomUpTo(anchoDelJuego-1),15.randomUpTo(altoDelJuego-1))
    
    // GAME
    method position() = position
    method position(newPos) {
        position = newPos
    }
    method otorgaVentaja() = false // false para los objetos "malos" (colisiones), true para los "buenos", 
                                   // luego nave.recibirVentaja(objetoBueno.ventaja()) para los buenos
    method image() = "meteorito.png"
}
object puntaje {
    var puntos = 0

    method sumarPuntos() {
        puntos += 10
    }

    method restarPuntos() {
        if (puntos >= 100)
            puntos -= 100
        else
            puntos = 0
    }

    method text() = puntos.toString()
    method textColor() = "FFFFFF"
    method textSize() = 2

    // GAME
    var position = game.at(anchoDelJuego/2,altoDelJuego-1)

    method position() = position
    method position(newPos) {
        position = newPos
    }
}

class Medikit {
    var position = game.at(1.randomUpTo(anchoDelJuego-1),15.randomUpTo(altoDelJuego-1))
    
    // GAME
    method position() = position
    method position(newPos) {
        position = newPos
    }

    method otorgaVentaja() = true
    method ventaja() = "Vida extra"
    method image() = "medikit.png"
}

object nave {
    var vidas = 3

    method text() {
        if (vidas == 3){
            return "♥♥♥"
        }
        else if (vidas == 2){
            return "♥♥"
        }
        else if (vidas == 1){
            return "♥"
        }
        else {return ""}
    }

    method textColor() = "FF0000"

    method perderVida() {
        vidas -= 1
    }
    
    method recibirVentaja(objeto) {
        if (objeto.ventaja()=="Vida extra" && vidas < 3){
            vidas += 1
        }
    } 

    method estaMuerto() = vidas == 0

    var position = game.at(anchoDelJuego/2,1)
    
    // GAME
    method position() = position
    method position(newPosition) {
        position = newPosition
    }

    method image() = "nave.png"

    // method danio(){
    //     vidas -= 1
    // }
}
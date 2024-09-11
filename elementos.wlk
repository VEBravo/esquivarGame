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
    
    method image() = "meteorito.png"
}


object nave {
    var position = game.at(anchoDelJuego/2,1)
    // var vidas = 3
    
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
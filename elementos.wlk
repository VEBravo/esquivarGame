class Meteorito {
    var position = game.at(1.randomUpTo(29),15.randomUpTo(19))
    
    // GAME
    method position() = position
    method position(newPos) {
        position = newPos
    }
    
    method image() = "meteorito.png"
}


object nave {
    var position = game.at(15,1)
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
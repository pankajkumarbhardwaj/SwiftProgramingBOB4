
  
import UIKit
import PlaygroundSupport

/*:
# Protocol Orianted Enum
___
*/

//:Game Desgin
//: Protocol Desgin

protocol LifeSpan {
    var numberOfHearts:Int {get}
    mutating func increaseHeart() //heart +1
    mutating func getAttacked() //heart -1
}

//:Desgin Enum
enum Player:LifeSpan {
    case dead
    case alive(currentHeart:Int)
    
    var numberOfHearts:Int {
        switch self {
        case .dead:
            return 0
        case .alive(currentHeart: let numberOfHearts):
            return numberOfHearts
        }
    }
    
    mutating func increaseHeart() {
        switch self {
        case .dead:
            self = .alive(currentHeart: 1)
        case .alive(currentHeart: let currentHeart):
            self = .alive(currentHeart: currentHeart + 1)
        }
    }
    
    mutating func getAttacked() {
        switch self {
        case .dead:
            break
        case .alive(currentHeart: let numberOfHearts):
            if numberOfHearts <= 1 {
                self = .dead
            }else {
                self = .alive(currentHeart: numberOfHearts - 1)
            }
        }
    }
}


//:Play Game
var state = Player.dead // .dead
state.increaseHeart()
state.increaseHeart()
state.numberOfHearts

state.getAttacked()
state.numberOfHearts

state.getAttacked()
state.numberOfHearts


//: Custom Operations
enum GameAction {
    case Start
    case Pause
    case Stop
    case Restart(delay:Int)
}

//GameAction.Stop == GameAction.Stop

func ==(lhs:GameAction, rhs:GameAction) -> Bool {
    switch (lhs, rhs) {
    case (.Start, .Start), (.Stop, .Stop), (.Pause, .Pause):
        return true
    case let (.Restart(lhsDelay), .Restart(rhsDelay)):
        return lhsDelay == rhsDelay
    default:
        return false
    }
}

GameAction.Restart(delay: 10) == GameAction.Restart(delay: 10)

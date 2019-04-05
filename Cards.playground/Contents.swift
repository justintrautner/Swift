import UIKit

struct Card{
    var color: String
    var roll: Int
    init(color:String){
        self.color=color
        if(color=="blue"){
            self.roll=Int.random(in: 0...1)
        }
        else if(color=="red"){
            self.roll=Int.random(in: 3...4)
        }else{
            self.roll=Int.random(in: 5...6)
        }
    }
}

class Deck{
    var cards: [Card]
    init(cards: [Card]) {
        self.cards=cards
    }
    func dealCard()->Card{
        let top=self.cards.popLast()
        return top!
    }
    func isEmpty() -> Bool {
        if self.cards.isEmpty {
            return true
        }else{
            return false
        }
    }
    func shuffleDeck() -> [Card] {
        self.cards=self.cards.shuffled()
        return self.cards
    }
}
class Player{
    var name:String
    var hand:[Card]
    init(name:String, hand:[Card]) {
        self.name=name
        self.hand=hand
    }
    func drawCard(deck: Deck)->[Card]{
        var newHand=self.hand
        newHand.append(deck.dealCard())
        self.hand=newHand
        return hand
    }
    func rollDice()->Int {
        return Int.random(in: 1...6)
    }
    func matchingCards(color: String, number: Int) -> Int {
        var match:Int=0
        for card in hand{
            if card.color=="color" && card.roll==number{
                match=match+1
            }
        }
        return match
    }
    
}




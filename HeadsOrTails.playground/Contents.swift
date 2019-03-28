import UIKit

//Create a function tossCoin() ->  String
//Have this function print "Tossing a Coin!"
//Next have the function randomly pick either "Heads" or "Tails"
//Have the function print the result
//Finally, have the function return the result
//Now create another function tossMultipleCoins(Int) -> Double
//Have this function call the tossCoin function multiple times based on the Integer input
//Have the function return a Double that reflects the ratio of head toss to total toss

func tossCoin()->String{
    print("Tossing a Coin!")
    let coin = ["Heads", "Tails"]
    let result = coin[Int.random(in: 0..<coin.count)]
    return "\(result)"
}
//print(tossCoin())

func tossMultiplieCoins(int: Int)->Double{
    let int=int
    var head: Double=0
    var total: Double=0
    for i in 1...int{
        print(i)
        let result=tossCoin()
        total+=1
        if result=="Heads" {
            head+=1
        }
    }
    return head/total
}
print(tossMultiplieCoins(int: 3))

import UIKit

class Animal{
    var name:String
    var health:Int=100
    init(name:String) {
        self.name=name
    }
    func displayHealth()->Self{
        print("\(self.health) hp left")
        return self
    }
}
class Cat:Animal{
    override init(name: String) {
        super.init(name: name)
        self.health=150
    }
    func growl() -> Self{
        print("Rawr!")
        return self
    }
    func run()->Self{
        self.health=self.health-10
        print("Running")
        return self
    }
}

class Lion:Cat{
    override init(name: String) {
        super.init(name: name)
        self.health=200
    }
    override func growl() -> Self{
        print("ROAR!!! I am King of the Jungle")
        return self
    }
}
class Cheetah:Cat{
    
    override func run() -> Self {
        if(self.health==0){
            print("No more health")
            return self
        }
        self.health-=50
        print("Running Faster")
        return self
    }
    func sleep()->Self{
        if(self.health==150){
            print("Max health")
            return self
        }
        self.health+=50
        print("ZZzzZZzz")
        return self
    }
}


var myCat: Cat = Cat(name: "Oscar")
var myLion: Lion = Lion(name: "Leo")
var myCheetah: Cheetah = Cheetah(name: "Carl")
//myCat.displayHealth().run().displayHealth().run().displayHealth()
//myLion.growl()
//myLion.displayHealth().run().displayHealth().run().displayHealth()
//myCheetah.displayHealth().sleep().displayHealth()
//myCheetah.displayHealth().run().displayHealth().run().displayHealth().sleep().displayHealth()
myCheetah.run().run().run().run().displayHealth()
myLion.run().run().run().growl()

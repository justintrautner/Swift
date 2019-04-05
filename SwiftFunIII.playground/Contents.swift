import UIKit

var myList: [Int]=[Int]()

for i in 1...255{
    myList.append(i)
}

func swapRandom(array: [Int])->[Int]{
    var array=array
    for _ in 0...100 {
        let rand1 = Int.random(in: 0..<255)
        let rand2 = Int.random(in: 0..<255)
        array.swapAt(rand1,rand2)
    }
    return array
}
func removeValue(array: inout [Int], value: Int){
    for i in 0..<array.count{
        if array[i]==value {
            print("Removed value \(value) found at index \(i)")
            array.remove(at: i)
            return
        }
    }
    print("Value not found")
}
print(swapRandom(array: myList))
removeValue(array: &myList, value: 1)
print(myList)




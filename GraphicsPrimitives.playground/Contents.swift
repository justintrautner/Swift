import UIKit

struct Point {
    var x:Double
    var y:Double
    init(x: Double, y:Double){
        self.x=x
        self.y=y
    }
}
struct Line{
    var start:Point
    var end:Point
    init(start: Point, end:Point) {
        self.start=start
        self.end=end
    }
    
    func getLength() -> Double {
        return self.start.x-self.end.x
    }
}
struct Triangle{
    var points:[Point]
}

var pointA=Point(x: 0, y: 0)
var pointB=Point(x: 10, y: 10)
var myLine=Line(start: pointA, end: pointB)
myLine.getLength()


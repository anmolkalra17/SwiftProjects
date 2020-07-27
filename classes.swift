import UIKit

let pi = 3.14

class Shape{
    var area: Double = 0
    var peri: Double = 0
    
    func calculateArea(length: Double, width: Double, optional: Double?) -> Double{
        if optional == nil{
            area = length * width
        }
        return area
    }
    func calculatePerimeter(length: Double, width: Double, optional: Double?) -> Double{
        if optional == nil{
            peri =  2 * (length + width)
        }
        return peri
    }
}

class Triangle: Shape{
    override func calculateArea(length: Double, width: Double, optional: Double?) -> Double{
        if optional == nil{
            area = 0.5 * length * width
        }
        return area
    }
    override func calculatePerimeter(length: Double, width: Double, optional: Double?) -> Double{
        if optional != nil{
            peri =  length + width + optional!
        }
        return peri
    }
}

class Circle: Shape{
    override func calculateArea(length: Double, width: Double?, optional: Double?) -> Double {
        if width == nil && optional == nil{
            area = pi * length * length
        }
        return area
    }
    
    override func calculatePerimeter(length: Double, width: Double?, optional: Double?) -> Double {
        if width == nil && optional == nil{
            peri = 2 * pi * length
        }
        return peri
    }
}

class Square: Shape{
    override func calculateArea(length: Double, width: Double?, optional: Double?) -> Double {
        if width == nil && optional == nil{
            area = length * length
        }
        return area
    }
    override func calculatePerimeter(length: Double, width: Double?, optional: Double?) -> Double {
        if width == nil && optional == nil{
            peri = 4 * length
        }
        return peri
    }
}

let tri = Triangle()
let cir = Circle()
let squ = Square()

var areaOfTriangle = tri.calculateArea(length: 10, width: 2, optional: nil)
var periOfTriangle = tri.calculatePerimeter(length: 10, width: 12, optional: 12)

var areaOfCircle = cir.calculateArea(length: 5, width: nil, optional: nil)
var periOfCircle = cir.calculatePerimeter(length: 5, width: nil, optional: nil)

var areaOfSquare = squ.calculateArea(length: 2, width: nil, optional: nil)
var periOfSquare = squ.calculatePerimeter(length: 10, width: nil, optional: nil)

print("Area of Triangle = \(areaOfTriangle)")
print("Perimeter of Triangle = \(periOfTriangle)")
print("Area of Circle = \(areaOfCircle)")
print("Perimeter of Circle = \(periOfCircle)")
print("Area of Square = \(areaOfSquare)")
print("Perimeter of Square = \(periOfSquare)")

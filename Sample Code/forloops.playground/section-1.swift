// Playground - noun: a place where people can play

import UIKit

for var i = 0; i < 100; ++i {
  
  println("in the loop! at \(i)")
}

var numbers = [234,5435,123,546,123]
var total = 0

for number in numbers {
total = total + number
}

println(total)


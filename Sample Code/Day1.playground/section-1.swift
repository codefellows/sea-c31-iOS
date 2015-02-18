// Playground - noun: a place where people can play

import UIKit


//front door is *1289 OR *9821
//first floor code is 4242


var str = "Hello, playground"
var myNumber = 1.0
myNumber = 22.334

var myBool = true

myBool = false



//this is just the template for a car
class Car {
  
  //these are our properties
  var model = "Camry"
  let make = "Toyota"
  let year = 1999
  var driver = "Jeffrey"
  var isOn = false;
  
  init(modelName : String,makeName : String) {
    self.model = modelName
    //we can change this constant because we are in the init
    self.make = makeName
  }
  
  
  func startEngine() {
    //accessing the property with our without self is the exact same result
    isOn = true
    self.isOn = true
    println("vrmmmmmmm")
    //loudLevel is a local variable, cant access it from any other method
    let loudLevel = 10
  }
  
  func fillWithGasAmount(gasAmount : Int, gasType : String) -> Bool {
    
    self.isOn = false
    //gasAmount = 25
    if gasAmount > 20 {
      return false
    } else {
    return true
    }
  }
}


//instance of our car class, this is an object!
let myCar = Car(modelName: "Wrangler", makeName: "Jeep")
myCar.startEngine()
myCar.fillWithGasAmount(15, gasType: "unleaded")

let anotherCar = Car(modelName: "explorer", makeName: "ford")

//setting the driver property
anotherCar.driver = "Pete"
anotherCar.model = "Truck"

class Limo : Car {
  var length = 30
  var fancyLeather = true
  
  func playAwesomeMusic()  {
    println("music!!!")
  }
}

let myLimo = Limo(modelName: "fancy", makeName: "rich")
println(myLimo.length)
myLimo.playAwesomeMusic()

//cant call playAwesomeMusic() on car because the car class doesnt have that method. only the limo
//myCar.playAwesome




















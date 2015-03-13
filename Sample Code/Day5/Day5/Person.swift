//
//  Person.swift
//  Day5
//
//  Created by Bradley Johnson on 3/3/15.
//  Copyright (c) 2015 BPJ. All rights reserved.
//

import UIKit

class Person : NSObject, NSCoding {
  var firstName : String
  var lastName = "Doe"
  var image : UIImage?
  
  init(fName : String, lName: String) {
    self.firstName = fName
    self.lastName = lName
    //self.image = UIImage(named: "placeholder.jpg")
  }
  
  required init(coder aDecoder: NSCoder) {
    self.firstName = aDecoder.decodeObjectForKey("firstName") as! String
    self.lastName = aDecoder.decodeObjectForKey("lastName") as! String
    if let image = aDecoder.decodeObjectForKey("image") as? UIImage {
      self.image = image
    }
  }
  
  func encodeWithCoder(aCoder: NSCoder) {
    aCoder.encodeObject(self.firstName, forKey: "firstName")
    aCoder.encodeObject(self.lastName, forKey: "lastName")
    if self.image != nil {
      aCoder.encodeObject(self.image, forKey: "image")
    }
  }
  
//  class func loadPersons() {
//    //this would create a bunch of person objects
//  }
  
}

//
//  Person.swift
//  Day5
//
//  Created by Bradley Johnson on 3/3/15.
//  Copyright (c) 2015 BPJ. All rights reserved.
//

import UIKit

class Person {
  var firstName : String
  var lastName = "Doe"
  var image : UIImage?
  
  init(fName : String, lName: String) {
    self.firstName = fName
    self.lastName = lName
  }
  
}

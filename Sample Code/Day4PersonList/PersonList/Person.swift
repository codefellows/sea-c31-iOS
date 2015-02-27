//
//  Person.swift
//  PersonList
//
//  Created by Bradley Johnson on 2/26/15.
//  Copyright (c) 2015 BPJ. All rights reserved.
//

import Foundation


class Person {
  var firstName = "John"
  var lastName = "Doe"
  var hairColor = "Brown"
  let height = 50
  
  init(firstName : String, lastName : String) {
    self.firstName = firstName
    self.lastName = lastName
  }
}
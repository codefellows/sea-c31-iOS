//
//  ViewController.swift
//  ClassRoster
//
//  Created by Bradley Johnson on 2/17/15.
//  Copyright (c) 2015 BPJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var nameLabel: UILabel!
  
  @IBOutlet weak var anotherLabel: UILabel!
  override func viewDidLoad() {
    super.viewDidLoad()
    
    
      let russell = Person(firstName: "Russell", lastName: "Wilson")
        let brad = Person(firstName: "Brad", lastName: "Johnson")
    
    //array stuff
    var people = [Person]()
    people.append(brad)
    people.append(russell)
    
    let coolPeople = [brad,russell]
    
    //more array stuff
    
    var names = ["Richard","Pete","Kam","Earl"]
    
    let dude = names[1]
    println(dude)
    let guy = names[3]
    println(guy)
    names.removeAtIndex(0)
    println(names.count)
    
    
    
    //this is the long way to make an array
    //var morePeople = Array<Person>()
    
    
    
    self.nameLabel.text = "Hello"
    self.anotherLabel.text = "Go Hawks"
    
//    let brad = Person(firstName: "Brad", lastName:"Johnson")
//    
    self.view.backgroundColor = UIColor.redColor()
//    println("view did load")
    // Do any additional setup after loading the view, typically from a nib.
  }
  
  override func viewWillAppear(animated: Bool) {
    super.viewWillAppear(animated)
    println("view will appear")
  }
  
  override func viewDidAppear(animated: Bool) {
    super.viewDidAppear(animated)
    println("view did appear")
  }

  @IBAction func switchToggled(sender: UISwitch) {
    if sender.on {
      self.view.backgroundColor = UIColor.purpleColor()
      self.nameLabel.text = "On"
    } else {
      self.view.backgroundColor = UIColor.yellowColor()
      self.nameLabel.text = "Off"
    }
  }
  @IBAction func buttonPressed(sender: AnyObject) {
    
    //this works, changes the buttons colors
    if let button = sender as? UIButton {
      button.backgroundColor = UIColor.yellowColor()
    }
    
    self.view.backgroundColor = UIColor.blueColor()
  }
}


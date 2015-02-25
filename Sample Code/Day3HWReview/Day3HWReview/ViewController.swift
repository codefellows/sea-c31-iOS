//
//  ViewController.swift
//  Day3HWReview
//
//  Created by Bradley Johnson on 2/24/15.
//  Copyright (c) 2015 BPJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var myLabel: UILabel!
  var names = ["Brad","Pete","Russ","Kam"]
  var index = 0
  
  override func viewDidLoad() {
    super.viewDidLoad()
    //self.myLabel.hidden = true
//    index++
//    index++
//    index++
//    index = index + 1
    let name = "Brad" //local variable
    myLabel.text = self.names[index]
    self.names.append("Earl")
    //self.names.removeAtIndex(3)
    //self.names.insert("Max", atIndex: 0)
    
    // Do any additional setup after loading the view, typically from a nib.
  }
  @IBAction func rightPressed(sender: AnyObject) {
    
    
    
    if self.names.count > 0 {
      
    }
    
    println("right pressed")
    if self.index < self.names.count - 1 {
    index++ //same as index = index + 1
    self.myLabel.text = self.names[index]
    }
    
  }

  @IBAction func leftPressed(sender: AnyObject) {
    //myLabel.text = "Left"
    println("left pressed")
    if self.index > 0 {
    self.index--
      self.myLabel.text = self.names[index] }
  }


}


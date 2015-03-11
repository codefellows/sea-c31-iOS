//
//  ViewController.swift
//  Day5
//
//  Created by Bradley Johnson on 3/3/15.
//  Copyright (c) 2015 BPJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
  //this is our properties
  @IBOutlet weak var tableView: UITableView!
  var group = [Person]()

  override func viewDidLoad() {
    super.viewDidLoad()
    
    if let filePath = NSBundle.mainBundle().pathForResource("People", ofType: "plist") {
      
      println(filePath)
      //var myPath = "oisjfoisdiof"
      if let plistArray = NSArray(contentsOfFile: filePath) {
        println(plistArray.count)
      }

    }
    
    
//    var me = Person(fName: "Brad", lName: "Johnson")
//    Person.loadPersons()
//    var russell = Person(fName: "Russell", lName: "Wilson")
//    
//    self.group.append(me)
//    self.group.append(russell)
  
    self.tableView.dataSource = self
  }
  
  override func viewWillAppear(animated: Bool) {
    super.viewWillAppear(animated)
    self.tableView.reloadData()
  }
  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return self.group.count
  }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as PersonCell
    let personToDisplay = self.group[indexPath.row]
//    cell.textLabel?.text = personToDisplay.firstName
    cell.personLabel.text = personToDisplay.firstName
    
    if personToDisplay.image != nil {
      cell.personImageView.image = personToDisplay.image
    } else {
      cell.personImageView.image = UIImage(named: "seahawks.png")
    }
    
    return cell
  }
  
  
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    
    if segue.identifier == "ShowPersonDetail" {
      let destinationVC = segue.destinationViewController as PersonDetailViewController
     let indexPath =  self.tableView.indexPathForSelectedRow()
      let person = self.group[indexPath!.row]
      
      destinationVC.selectedPerson = person
    }
    
  }

}


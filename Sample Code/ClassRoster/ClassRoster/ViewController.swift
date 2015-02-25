//
//  ViewController.swift
//  ClassRoster
//
//  Created by Bradley Johnson on 2/17/15.
//  Copyright (c) 2015 BPJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource {

  @IBOutlet weak var tableView: UITableView!
  
  let names = ["Brad","Russ","Pete","Kam","Max","Sherm","John","Earl","Bobby", "KJ","KPL", "Simon", "Burley","Jeremy", "Doug","Beast","Turbin","Sweezy","Kearse","Luke"]

  override func viewDidLoad() {
    super.viewDidLoad()
    self.tableView.dataSource = self
    //this is the long way to make an array
    //var morePeople = Array<Person>()
    
//    let brad = Person(firstName: "Brad", lastName:"Johnson")
//
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
  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

    return self.names.count
  }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
//    if indexPath.row == 0 {
//      cell.backgroundColor = UIColor.blueColor()
//    } else {
//      cell.backgroundColor = UIColor.whiteColor()
//    }
    //cell.backgroundColor = UIColor.blueColor()
    let name = self.names[indexPath.row]
        cell.textLabel?.text = name
//    cell.textLabel?.text = "\(indexPath.row))"

    return cell
  }

  
}


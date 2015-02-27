//
//  ViewController.swift
//  PersonList
//
//  Created by Bradley Johnson on 2/26/15.
//  Copyright (c) 2015 BPJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
  
  var people = [Person]()

  @IBOutlet weak var tableView: UITableView!
  override func viewDidLoad() {
    super.viewDidLoad()
    self.title = "Home"
    self.tableView.backgroundColor = UIColor.yellowColor()
    self.tableView.dataSource = self
    self.tableView.delegate = self
    
    //the user cant see the VC at this point
    
    var brad = Person(firstName: "Brad", lastName: "Johnson")
    brad.firstName = "Bradley"
    //brad.height = 70 cant do this because its a let-constant
    var russell = Person(firstName: "Russell", lastName: "Wilson")
    var pete = Person(firstName: "Pete", lastName: "Carroll")
    self.people.append(brad)
    self.people.append(russell)
    self.people.append(pete)
    //self.people += [brad,russell]
    
    // Do any additional setup after loading the view, typically from a nib.
  }
  
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    if segue.identifier == "ShowGreen" {
      println("showing green")
      let destinationVC = segue.destinationViewController as PersonDetailViewController
      //asking the table view for the selected index path, because we need to know which row they clicked on
      let indexPath = self.tableView.indexPathForSelectedRow()
      //figures out which person they clicked on
      let person = self.people[indexPath!.row]
      //passing the person to our destination view controller
      destinationVC.selectedPerson = person
      
      //destinationVC.selectedPerson =
      //destinationVC.title = "Hello"
    }
  }
  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return self.people.count
  }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    //step 1: dequeue a reusable cell
    let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
    
   let person = self.people[indexPath.row]
    
    cell.textLabel?.text = person.firstName + " " + person.lastName
    return cell
    
//    self.performSegueWithIdentifier("ShowBlue", sender: nil)
  }
  
//  func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//    println(indexPath.row)
//    
//    let myViewController = UIViewController()
//    myViewController.view.backgroundColor = UIColor.greenColor()
//    self.navigationController?.pushViewController(myViewController, animated: true)
//    
//  }
  
  



}


//
//  PersonDetailViewController.swift
//  Day5
//
//  Created by Bradley Johnson on 3/3/15.
//  Copyright (c) 2015 BPJ. All rights reserved.
//

import UIKit

class PersonDetailViewController: UIViewController, UITextFieldDelegate {
  @IBOutlet weak var firstNameLabel: UITextField!

  var selectedPerson = Person(fName: "Dummy", lName:"Dummy")
  
    override func viewDidLoad() {
        super.viewDidLoad()
      self.title = self.selectedPerson.firstName
      self.firstNameLabel.delegate = self

        // Do any additional setup after loading the view.
    }
  
  func textFieldShouldReturn(textField: UITextField) -> Bool {
    //this line dismisses the keyboard
    textField.resignFirstResponder()
    return true
  }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

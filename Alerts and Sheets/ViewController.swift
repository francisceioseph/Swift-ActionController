//
//  ViewController.swift
//  Alerts and Sheets
//
//  Created by Francisco José A. C. Souza on 26/12/15.
//  Copyright © 2015 Francisco José A. C. Souza. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func simpleAlert(sender: UIButton) {
        
        let alert    = UIAlertController(title: "Alert", message: "Hello, I'm an alert!", preferredStyle: .Alert)
        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel, handler: nil)
        let okAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
        
        alert.addAction(cancelAction)
        alert.addAction(okAction)
        
        presentViewController(alert, animated: true, completion: nil)
    }
    
    @IBAction func destructiveAlert(sender: UIButton) {
        
        let alert        = UIAlertController(title: "Alert", message: "Hello, I'm an destructive alert!", preferredStyle: .Alert)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel, handler: nil)
        let destroyAction     = UIAlertAction(title: "Destroy", style: .Destructive) { (action) -> Void in
            print("Perform some destructive action")
        }
        
        alert.addAction(cancelAction)
        alert.addAction(destroyAction)
        
        presentViewController(alert, animated: true, completion: nil)

    }
    
    @IBAction func fieldedAlert(sender: UIButton) {
        let alert    = UIAlertController(title: "Action Sheet", message: "Hello, I'm an alert with a text field!", preferredStyle: .Alert)
        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel, handler: nil)
        let okAction = UIAlertAction(title: "OK", style: .Default) { (action) -> Void in
        
            let textfield = alert.textFields?.first
            
            
            print("You typed the message: \(textfield?.text)")
        }

        
        alert.addTextFieldWithConfigurationHandler { (textfield) -> Void in
            
            textfield.placeholder = "Type some text!"
        }
        
        alert.addAction(cancelAction)
        alert.addAction(okAction)
        
        presentViewController(alert, animated: true, completion: nil)
    }
    
    @IBAction func actionSheet(sender: UIButton) {
        let actionSheet    = UIAlertController(title: "Alert", message: "Hello, I'm an action sheet!", preferredStyle: .ActionSheet)
        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel, handler: nil)
        let okAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
        let destroyAction     = UIAlertAction(title: "Destroy", style: .Destructive) { (action) -> Void in
            print("Perform some destructive action")
        }

        actionSheet.addAction(okAction)
        actionSheet.addAction(cancelAction)
        actionSheet.addAction(destroyAction)
        presentViewController(actionSheet, animated: true, completion: nil)
    }
}


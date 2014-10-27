//
//  ViewController.swift
//  PostCard
//  Copyright (c) 2014 FX Group Pty. Ltd. All rights reserved.
//  testing commits

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
   
   
    @IBOutlet weak var mailButton: UIButton!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.hidden = false
        messageLabel.text = "\(enterMessageTextField.text)"
        messageLabel.textColor = UIColor.redColor()
        
        mailButton.setTitle("Are you sure?", forState: UIControlState.Highlighted)
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
     
        
        
    }
}


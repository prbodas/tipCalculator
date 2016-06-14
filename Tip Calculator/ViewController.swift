//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Prachi Bodas on 6/14/16.
//  Copyright © 2016 Prachi Bodas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipPercentage: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //called when the keyboard is dismissed by tapping 
    //the screen
    @IBAction func tapView(sender: AnyObject) {
        view.endEditing(true)
    }
    
    @IBAction func billChanged(sender: AnyObject) {
        updateValues()
    }

    @IBAction func percentChanged(sender: AnyObject) {
        updateValues()
    }
    
    func updateValues()
    {
        let percentages = [0.18,0.2,0.25]
        
        let bill = Double(billField.text!) ?? 0.00
        let tip = bill*percentages[tipPercentage.selectedSegmentIndex]
        
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", (bill+tip))
    }
}


//
//  ViewController.swift
//  TipMonkey
//
//  Created by Shubha Tripathi on 25/12/16.
//  Copyright © 2016 Shubha Tripathi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    //@IBOutlet weak var totalLabel: UINavigationItem!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billVal: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel1: UILabel!
    
    @IBOutlet weak var totalLabel3: UILabel!
    @IBOutlet weak var totalLabel2: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func tapEnd(_ sender: AnyObject) {
        view.endEditing(true)
    }
    @IBAction func tipCalculation(_ sender: AnyObject) {
        
        let tipPercentages = [0.18, 0.20, 0.25]
        
        let bill = Double(billVal.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", (total))
        totalLabel1.text = String(format: "$%.2f", (total/2))
        totalLabel2.text = String(format: "$%.2f", (total/3))
        totalLabel3.text = String(format: "$%.2f", (total/4))
    }


}


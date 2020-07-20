//
//  ViewController.swift
//  Tipper
//
//  Created by Safiyah Lakhany on 7/17/20.
//  Copyright © 2020 Safiyah Lakhany. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        billAmountTextField.becomeFirstResponder()
        // Do any additional setup after loading the view.
//        totalLabel.layer.borderColor = UIColor.white.cgColor
//        totalLabel.layer.borderWidth = 3.0
//        tipPercentageLabel.layer.borderColor = UIColor.white.cgColor
//        tipPercentageLabel.layer.borderWidth = 3.0
        totalLabel.text = "Tip: $0.00"
        tipPercentageLabel.text = "Total: $0.00"
       // billAmountTextField.becomeFirstResponder()
    }

    @IBAction func onTap(_ sender: Any) {
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        let strBill = String((billAmountTextField.text)?.dropFirst() ?? "")
        let bill = Double(strBill) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipPercentageLabel.text = String(format: "Tip: $%.2f", tip)
        totalLabel.text = String(format: "Total: $%.2f", total)
    }

}


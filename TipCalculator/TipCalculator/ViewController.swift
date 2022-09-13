//
//  ViewController.swift
//  TipCalculator
//
//  Created by Tasneem Hasanat on 8/21/22.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var darkModeLabel: UILabel!
    @IBOutlet weak var outletSwitch: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        // Get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        //Get Total tip by multiplying tip * tipPercentage
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //update Tip Amount label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        
        //update Total Amount
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    @IBAction func darkAction(_ sender: Any) {
        if outletSwitch.isOn == true{
            view.backgroundColor = UIColor.white
            darkModeLabel.textColor = UIColor.white
            tipAmountLabel.textColor = UIColor.white
            totalLabel.textColor = UIColor.white
        }else{
            view.backgroundColor = UIColor.white
            darkModeLabel.textColor = UIColor.black
            tipAmountLabel.textColor = UIColor.black
            totalLabel.textColor = UIColor.black
        }
    }
    
}


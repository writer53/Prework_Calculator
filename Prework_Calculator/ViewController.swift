//
//  ViewController.swift
//  Prework_Calculator
//
//  Created by user203102 on 8/30/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Sets the title in the navigation bar
        self.title = "Tip Calculator"
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
        // this is a good place to retreive to default tip percentage
        // and update the tip amount
        let defaults = UserDefaults.standard
        let tip1 = defaults.double(forKey: "mytip1")
        let tipPercentages = [tip1, 0.18, 0.2]
        
        tipPercentages[tipControl.selectedSegmentIndex]
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did disappear")
    }
    @IBAction func calculateTip(_ sender: Any) {
        // get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
       
        
        // Get total tip by multiplying tip * tipPercentage
        let defaults = UserDefaults.standard
        let tip1 = defaults.double(forKey: "mytip1")
        let tipPercentages = [tip1, 0.18, 0.2]
        let tip = bill *
            tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        // Update Total Amount
        totalLabel.text = String(format: "$%.2f", total)
    
    }
    

    
}


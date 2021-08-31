//
//  SettingsViewController.swift
//  Prework_Calculator
//
//  Created by user203102 on 8/30/21.
//

import UIKit

class SettingsViewController: UIViewController {

    
    @IBOutlet weak var defaultLabel: UILabel!
    
    @IBOutlet weak var tip1Label: UILabel!
    
    @IBOutlet weak var tip2Label: UILabel!
    
    @IBOutlet weak var tip3Label: UILabel!
    
    @IBOutlet weak var tip1Text: UITextField!
    
    @IBOutlet weak var tip2Text: UITextField!
    
    @IBOutlet weak var tip3Text: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    //
    
    @IBAction func tip1Change(_ sender: Any) {
        let defaults = UserDefaults.standard
        let tip1 = Double(tip1Text.text!) ?? 0
        defaults.set(tip1, forKey: "mytip1")
        defaults.synchronize()
    }
    @IBAction func tip2Change(_ sender: Any) {
        let defaults = UserDefaults.standard
        let tip2 = Double(tip2Text.text!) ?? 0
        defaults.set(tip2, forKey: "mytip2")
        defaults.synchronize()    }
    @IBAction func tip3Change(_ sender: Any) {
        let defaults = UserDefaults.standard
        let tip3 = Double(tip3Text.text!) ?? 0
        defaults.set(tip3, forKey: "mytip3")
        defaults.synchronize()    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

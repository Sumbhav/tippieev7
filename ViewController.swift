//
//  ViewController.swift
//  tippieev7
//
//  Created by Sambhav Jain on 7/7/20.
//  Copyright © 2020 SH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var twoPeopleLabel: UILabel!
    @IBOutlet weak var threePeopleLabel: UILabel!
    @IBOutlet weak var fourPeopleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    
    @IBAction func onTap(sender: Any) {
        view.endEditing(true)
    }
     


    @IBAction func calculate_tip(sender: Any) {
        let tipPerctange = [0.15, 0.2, 0.3]
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPerctange[tipControl.selectedSegmentIndex]
        let total = bill + tip
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total )
        
        twoPeopleLabel.text = String(format: "$%.2f", (total/2))
        threePeopleLabel.text = String(format: "$%.2f", (total/3))
        fourPeopleLabel.text = String(format: "$%.2f", (total/4))
        
        
        
        
        
        
        
   
        
        
        
        
    }
}





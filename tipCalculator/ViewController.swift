//
//  ViewController.swift
//  tipCalculator
//
//  Created by dinesh on 03/01/17.
//  Copyright © 2017 dinesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipamtLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billText: UITextField!
    @IBOutlet weak var tippercent: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let defaults = UserDefaults.standard
        let defVal = defaults.integer(forKey: "defautTip")
        tippercent.selectedSegmentIndex = defVal
        let tipArr = [0.18,0.2,0.25]
        let billAmt = Double(billText.text!) ?? 0
        let tipAmt = billAmt * tipArr[tippercent.selectedSegmentIndex]
        let totalAmt = billAmt + tipAmt
        tipamtLabel.text = String(format: "$%.2f",tipAmt)
        totalLabel.text = String(format: "$%.2f",totalAmt)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
   

    @IBAction func tipCalc(_ sender: AnyObject) {
        let tipArr = [0.18,0.2,0.25]
        let billAmt = Double(billText.text!) ?? 0
        let tipAmt = billAmt * tipArr[tippercent.selectedSegmentIndex]
        let totalAmt = billAmt + tipAmt
        tipamtLabel.text = String(format: "$%.2f",tipAmt)
        totalLabel.text = String(format: "$%.2f",totalAmt)
    }
}


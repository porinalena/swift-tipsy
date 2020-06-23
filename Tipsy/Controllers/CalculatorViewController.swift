//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    @IBOutlet var buttons: [UIButton]!
    
    var tipPercentage: String?
    var tipWithoutPctSign: String?
    var stepperValue: Int?
    var splitNumberLabelValue: Int? = 2
    var total: Float?

    func resetSelectedButtons() {
        for button in buttons {
            button.isSelected = false
        }
    }
    
    @IBAction func tipChanged(_ sender: UIButton) {
        sender.isSelected = true
        resetSelectedButtons()
        
        if !sender.isSelected {
            sender.isSelected = true
        }
   
        tipPercentage = sender.titleLabel!.text
        tipWithoutPctSign = tipPercentage!.replacingOccurrences(of: "%", with: "", options: NSString.CompareOptions.literal, range: nil)
        billTextField.endEditing(true)
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabelValue = Int(splitNumberLabel.text ?? "2")
        stepperValue = Int(sender.value)
        
        if stepperValue ?? 2 > splitNumberLabelValue ?? 2 {
            splitNumberLabelValue! += 1
            splitNumberLabel.text = String(splitNumberLabelValue!)
        } else {
            splitNumberLabelValue = splitNumberLabelValue! - 1
            splitNumberLabel.text = String(splitNumberLabelValue!)
        }
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let tipInDecimal = (Float(tipWithoutPctSign ?? "10") ?? 10.0) / 100
        let billTextFieldValue = Float(billTextField.text!)
        let tipCalculated = billTextFieldValue! * tipInDecimal
        total = (billTextFieldValue! + tipCalculated) / Float(splitNumberLabelValue!)
        print(total)
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           if segue.identifier == "goToResult" {
               let destinationVC = segue.destination as! ResultViewController
           }
       }
    
}


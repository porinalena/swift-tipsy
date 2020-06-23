//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Lena Porina on 6/20/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    func getTotal() {
        
    }
    
    func getNumberOfPeople(){
        
    }
    
    func getTipPercentage() {
        
    }
    
}

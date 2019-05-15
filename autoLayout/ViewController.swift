//
//  ViewController.swift
//  autoLayout
//
//  Created by Денис Сидоренко on 09/05/2019.
//  Copyright © 2019 Денис Сидоренко. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var dateTF: UITextField!
    @IBOutlet weak var montTF: UITextField!
    @IBOutlet weak var yearTF: UITextField!
    
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func findDay() {
        
    }
}


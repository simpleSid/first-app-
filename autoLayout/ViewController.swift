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
        let calendar = Calendar.current
        
        var dateComponents = DateComponents()
        
        guard let day = Int(dateTF.text!), let month = Int(montTF.text!), let year = Int(yearTF.text!) else {
            print("fuck")
            return
        }
        
        dateComponents.day = day
        dateComponents.month = month
        dateComponents.year = year
        
        let date = calendar.date(from: dateComponents)
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        
        if let date = date {
            let weekDay = dateFormatter.string(from: date)
            resultLabel.text = weekDay
        }
    }
}


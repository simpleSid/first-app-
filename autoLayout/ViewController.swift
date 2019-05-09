//
//  ViewController.swift
//  autoLayout
//
//  Created by Денис Сидоренко on 09/05/2019.
//  Copyright © 2019 Денис Сидоренко. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func changeTextInLabel(_ sender: UIButton) {
        label.text = "Hello, World!"
    }
    
}


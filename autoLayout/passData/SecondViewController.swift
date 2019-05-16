//
//  SecondViewController.swift
//  autoLayout
//
//  Created by Денис Сидоренко on 16/05/2019.
//  Copyright © 2019 Денис Сидоренко. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var login: String!
    var password: String!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = login
    }
    
    @IBAction func sendPressed(_ sender: UIButton) {
        
    }
}

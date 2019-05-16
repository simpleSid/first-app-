//
//  ViewController5.swift
//  autoLayout
//
//  Created by Денис Сидоренко on 16/05/2019.
//  Copyright © 2019 Денис Сидоренко. All rights reserved.
//

import UIKit

class ViewController5: UIViewController {

    @IBOutlet weak var login: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var justLabel: UILabel!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let dvc = segue.destination as? SecondViewController {
            if let text = login.text {
                dvc.login = text
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    @IBAction func unwindToMainScreen(segue: UIStoryboardSegue) {
        guard segue.identifier == "unwindSegue" else { return }
        guard let svc = segue.source as? SecondViewController else { return }
        justLabel.text = svc.label.text 
    }
    
    @IBAction func passData(_ sender: UIButton) {
        performSegue(withIdentifier: "DetailSegue", sender: nil)
    }
}

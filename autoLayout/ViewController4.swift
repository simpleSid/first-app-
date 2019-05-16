//
//  ViewController4.swift
//  autoLayout
//
//  Created by Денис Сидоренко on 16/05/2019.
//  Copyright © 2019 Денис Сидоренко. All rights reserved.
//

import UIKit

class ViewController4: UIViewController {

    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var farenheiteLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.value = 0
            slider.minimumValue = 0
            slider.maximumValue = 100
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func changeValue(_ sender: UISlider) {
        let temperatureCelsius = Int(round(slider.value))
        celsiusLabel.text = "\(temperatureCelsius)ºC"
        
        let temperatureFarenheite = Int(round((slider.value * 9 / 5) + 32))
        farenheiteLabel.text = "\(temperatureFarenheite)ºF"
    }
}

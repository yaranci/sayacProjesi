//
//  ViewController.swift
//  sayacProjesi
//
//  Created by imrahor on 24.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    var kalanZaman = 0

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        kalanZaman = 15
        label.text = "Kalan Zaman: \(kalanZaman)"
    }

    @IBAction func sayacButonu(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(timerFonk), userInfo: nil, repeats: true)
    }
    
    @objc func timerFonk(){
        label.text = "Kalan Zaman: \(kalanZaman)"
        kalanZaman = kalanZaman-1
        
        if kalanZaman == 0 {
            label.text = "Süre Bitti"
            timer.invalidate()
            kalanZaman = 15
        }
        
    }
    
    
}


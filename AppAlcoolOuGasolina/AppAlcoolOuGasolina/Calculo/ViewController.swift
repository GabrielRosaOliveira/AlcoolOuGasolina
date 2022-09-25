//
//  ViewController.swift
//  AppAlcoolOuGasolina
//
//  Created by Gabriel on 25/09/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var priceAlcool: UITextField!
    @IBOutlet weak var priceGasolina: UITextField!
    
    @IBOutlet weak var calcPriceButton: UIButton!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configsButtonAndLabel()
    }

    func configsButtonAndLabel() {
        calcPriceButton.setTitle("Calcular", for: .normal)
        titleLabel.text = "Digite os Preços!"
        titleLabel.backgroundColor = .systemBlue
        titleLabel.textColor = .white
       
    }

}


//
//  ViewController.swift
//  AppAlcoolOuGasolina
//
//  Created by Gabriel on 25/09/22.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var priceAlcool: UITextField!
    @IBOutlet weak var priceGasolina: UITextField!
    
    @IBOutlet weak var calcPriceButton: UIButton!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configsButtonAndLabel()
        priceAlcool.delegate = self
        priceGasolina.delegate = self
    }
    
    func calcularCombustivel() {
        var calculo: Double = Double(priceAlcool / priceGasolina)
        if calculo < 0.70 {
            print(titleLabel ?? "error")
        } else {
            print("oi")
        }
    }

    func configsButtonAndLabel() {
        calcPriceButton.backgroundColor = .blue
        calcPriceButton.tintColor = .white
        calcPriceButton.setTitle("Calcular", for: .normal)
        calcPriceButton.layer.cornerRadius = 20
        
        titleLabel.text = "Digite os Preços!"
        titleLabel.backgroundColor = .blue
        titleLabel.textColor = .white
        
        priceAlcool.placeholder = "Ex:1.99"
        priceGasolina.placeholder = "Ex:2.99"
        priceAlcool.textAlignment = .center
        priceGasolina.textAlignment = .center
       
    }
    
    
    @IBAction func tappedCalcButton(_ sender: UIButton) {
     calcularCombustivel()
    }
    
    
//    func textFieldDidBeginEditing(_ textField: UITextField) {
//        <#code#>
//    }
//    
//    func textFieldDidEndEditing(_ textField: UITextField) {
//        
//    }
//
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        <#code#>
//    }
//    
}


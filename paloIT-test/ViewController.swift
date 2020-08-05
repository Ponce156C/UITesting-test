//
//  ViewController.swift
//  paloIT-test
//
//  Created by Carlos Ponce on 29/07/20.
//  Copyright © 2020 Carlos Ponce. All rights reserved.
//

import UIKit

class principalController: UIViewController {

    @IBOutlet weak var inputNumber: UITextField!
    @IBOutlet weak var numberButton: UIButton! {
        didSet {
            numberButton.layer.cornerRadius = 10
        }
    }
    @IBOutlet weak var numberLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inputNumber.delegate = self
        numberLabel.isHidden = true
    }

    @IBAction func calculeteNumber(_ sender: UIButton) {
        self.resignFirstResponder()
        guard let text = inputNumber.text else {
            alert().startAlert("Completa los campos", viewController: self)
            return
        }
        if text.count >= 14 && text.count <= 16 {
            let digits = text.compactMap{ $0.wholeNumberValue }
            if let numberMostFrequent = mostFrequent(digits) {
                numberLabel.isHidden = false
                numberLabel.text = "El número que más se repite es el \(numberMostFrequent.number) la cantidad de \(numberMostFrequent.count) veces"
            }else {
                numberLabel.isHidden = true
                alert().startAlert("No se tuvieron resultados", viewController: self)
            }
        }else {
            numberLabel.isHidden = true
            alert().startAlert("Numero invalido", viewController: self)
            return
        }
    }
    
    func mostFrequent(_ numbers: [Int]) -> (number: Int, count: Int)? {
        var counter = [Int: Int]()
        numbers.forEach { counter[$0] = (counter[$0] ?? 0) + 1 }
        
        if let (number, count) = counter.max(by: {$0.1 < $1.1}) {
            print(counter)
            return (number, count)
        }
        
        return nil
    }
}

extension principalController: UITextFieldDelegate {
    private func textViewDidEndEditing(_ textView: UITextView) {
        self.resignFirstResponder()
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.resignFirstResponder()
        return false
    }
}

class alert {
    
    func startAlert(_ title: String, viewController: UIViewController) {
        let alert = UIAlertController(title: title, message: nil, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "ACEPTAR", style: .default, handler: nil))
        viewController.present(alert, animated: true)
    }
}

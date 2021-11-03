//
//  ViewController.swift
//  3
//
//  Created by Toshiyana on 2021/11/02.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var numTextField1: UITextField!
    @IBOutlet private weak var numTextField2: UITextField!
    @IBOutlet private weak var signSwitch1: UISwitch!
    @IBOutlet private weak var signSwitch2: UISwitch!
    @IBOutlet private weak var numLabel1: UILabel!
    @IBOutlet private weak var numLabel2: UILabel!
    @IBOutlet private weak var resultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        numTextField1.keyboardType = .numberPad
        numTextField2.keyboardType = .numberPad
    }

    @IBAction private func calcButtonPressed(_ sender: UIButton) {
        guard let num1 = Double(numTextField1.text ?? "") else {
            resultLabel.text = "数字を入力してください"
            return
        }
        guard let num2 = Double(numTextField2.text ?? "") else {
            resultLabel.text = "数字を入力してください"
            return
        }

        let signedNum1: Double
        if signSwitch1.isOn {
            signedNum1 = -num1
        } else {
            signedNum1 = num1
        }

        let signedNum2: Double
        if signSwitch2.isOn {
            signedNum2 = -num2
        } else {
            signedNum2 = num2
        }

        numLabel1.text = String(signedNum1)
        numLabel2.text = String(signedNum2)
        resultLabel.text = String(signedNum1 + signedNum2)
    }
}

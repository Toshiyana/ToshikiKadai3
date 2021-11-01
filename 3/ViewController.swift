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
        guard var num1 = Double(numTextField1.text ?? "") else {
            resultLabel.text = "数字を入力してください"
            return
        }
        guard var num2 = Double(numTextField2.text ?? "") else {
            resultLabel.text = "数字を入力してください"
            return
        }

        if !signSwitch1.isOn {
            num1 = -num1
        }
        if !signSwitch2.isOn {
            num2 = -num2
        }

        numLabel1.text = String(num1)
        numLabel2.text = String(num2)
        resultLabel.text = String(num1 + num2)
    }
}

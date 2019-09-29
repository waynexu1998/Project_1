//
//  ViewController2.swift
//  Project_1
//
//  Created by Jiangyong Xu on 9/29/19.
//  Copyright © 2019 Jiangyong Xu. All rights reserved.
//

import Foundation
import UIKit

class ViewController2: UIViewController, UITextFieldDelegate{
    
    @IBOutlet weak var text3: UITextField!
    @IBOutlet weak var text2: UITextField!
    @IBOutlet weak var text1: UITextField!
    @IBOutlet weak var Label1: UILabel!
    let x = budget()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        text1.layer.borderColor = UIColor(displayP3Red: 1, green: 168/255, blue: 168/255, alpha: 1).cgColor
        text1.delegate = self
        text2.delegate = self
        text3.delegate = self
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let maxLength = 5
        let currentString: NSString = textField.text! as NSString
        let newString: NSString = currentString.replacingCharacters(in: range, with: string) as NSString
        
        let  char = string.cString(using: String.Encoding.utf8)!
        let isBackSpace = strcmp(char, "\\b")
        
        if (isBackSpace == -92) {
            print("Backspace was pressed")
            textField.text?.removeAll()
        }
        return newString.length <= maxLength
    }
    
    @IBAction func shop_Budget(_ sender: UITextField) {
        let text = sender.text
        let number = Int(text!) ?? 0
        x.setSB(x: number)
        Label1.text = String(x.getTB())
    }
    
    
    @IBAction func food_Budget(_ sender: UITextField) {
        let text = sender.text
        let number = Int(text!) ?? 0
        x.setFB(x: number)
        Label1.text = String(x.getTB())
    }
    
    @IBAction func utility_Budget(_ sender: UITextField) {
        let text = sender.text
        let number = Int(text!) ?? 0
        x.setUB(x: number)
        Label1.text = String(x.getTB())
    }
}

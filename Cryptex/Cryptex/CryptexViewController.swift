//
//  CryptexViewController.swift
//  Cryptex
//
//  Created by Steven Leyva on 5/8/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

import UIKit

class CryptexViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cryptPickerValuChanged.delegate = self
        
        cryptPickerValuChanged.dataSource = self
        
        var cryptexController = CryptexController()
        
        updateViews(currentCryptex: cryptexController.currentCryptex!)
        
        
    }
    @IBOutlet var cryptPickerValuChanged: UIPickerView!
    
    
    
    @IBAction func unlockedButtonPressed(_ sender: Any) {
    }
    
    @IBOutlet var hintLabel: UILabel!
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
     
        return 0
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return 0
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
   
        return ""
    }
    
    
    var letters = ["A", "B", "C", "D",
                   "E", "F", "G", "H",
                   "I", "J", "K", "L",
                   "M", "N", "O", "P",
                   "Q", "R", "S", "T",
                   "U", "V", "W", "X",
                   "Y", "Z"]
    
    func updateViews(currentCryptex: Cryptex) {
        hintLabel.text = currentCryptex.hint
        
        cryptPickerValuChanged.reloadAllComponents()    }
}

private func hasMatchingPassword() -> Bool {

    guard let currentPassword = CryptexController.currentCryptex else { return false }
  
    var characters: [String] = []

    for i in 0..<currentPassword.password.count {
    let row = pickerView.selectedRow(inComponent: i)
        guard let title = pickerView(pickerView, titleForRow: row, forComponent: i) else { continue }

        characters.append(title)
}
    let word = characters.joined().lowercased()
    return word == currentPassword.password.lowercased()
}

guard let currentPassword = CryptexController.currentCryptex else { return false }
    var characters: [String] = []
    for i in 0..<currentPassword.password.count {
        let row = pickerView.selectedRow(inComponent: i)
        guard let title = pickerView(pickerView, titleForRow: row, forComponent: i) else { continue }
}
characters.append(time)

let word = characters.joined().lowercased()



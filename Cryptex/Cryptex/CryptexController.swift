//
//  CryptexController.swift
//  Cryptex
//
//  Created by Steven Leyva on 5/8/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

import Foundation


class CryptexController {
    
    private (set) var cryptex: [Cryptex] = [Cryptex(password: "Boat", hint: "Floats on Water"),
                                            Cryptex(password: "Salt", hint: "A Seasoning")]
    
    var currentCryptex: Cryptex?
    
    func randomCryptex(){
        let randomCryptex = cryptex.randomElement()
        currentCryptex = randomCryptex
    }
    init() {
        
    }
    
}


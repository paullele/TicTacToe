//
//  Signatures.swift
//  TicTacToe
//
//  Created by apple on 19/12/2016.
//  Copyright © 2016 apple. All rights reserved.
//

import Foundation

class Signatures {
    
    private var playerSignature: String!
    private var computerSignature: String!
    
    init(playerSignature: String, computerSignature: String) {
        self.playerSignature = playerSignature
        self.computerSignature = computerSignature
    }
    
    var getPlayerSig: String {
        return playerSignature
    }
    
    var getComputerSig: String {
        return computerSignature
    }
}

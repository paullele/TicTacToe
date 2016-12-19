//
//  TTTButtons.swift
//  TicTacToe
//
//  Created by apple on 18/12/2016.
//  Copyright © 2016 apple. All rights reserved.
//

import UIKit

class TTTButtons: UILabel {

    private let managePlayer = GameViewController()

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if(self.text != managePlayer.playerSignature && self.text != managePlayer.computerSignature) {
            self.text = managePlayer.playerSignature
            
        }
    }
}

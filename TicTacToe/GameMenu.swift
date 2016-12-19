//
//  GameMenu.swift
//  TicTacToe
//
//  Created by apple on 18/12/2016.
//  Copyright © 2016 apple. All rights reserved.
//

import UIKit

class GameMenu: UIViewController {
    
    //prepares the player's and computer's signature
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier {
            switch identifier {
            case "ComputerFirst":
                if let viewController = segue.destination as? GameViewController {
                    viewController.computerGoesFirst = true
                }
            case "PlayerFirst":
                if let viewController = segue.destination as? GameViewController {
                    viewController.computerGoesFirst = false
                }
                
            default:
                break
            }
        }
    }
}

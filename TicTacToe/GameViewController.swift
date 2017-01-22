//
//  ViewController.swift
//  TicTacToe
//
//  Created by apple on 18/12/2016.
//  Copyright © 2016 apple. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    
    @IBOutlet var fields: [UIButton]!
    @IBOutlet weak var displayGameStatus: UILabel!
    
    private let aiEngine = AIEngine()
    private var k = 0
    private var signaturesInit: Signatures!
    private var gameEnded = false
    
    var computerGoesFirst: Bool?

    private func drawBorders() {
        for item in fields {
            item.layer.borderWidth = 1
            item.layer.borderColor = UIColor.black.cgColor
        }
    }
    
    @IBAction func onNewGame(_ sender: UIBarButtonItem) {
        
        if !gameEnded {
            
            let controller = UIAlertController(title: "Are you sure you want to start a new game?", message: nil, preferredStyle: .actionSheet)
            
            let yesAction = UIAlertAction(title: "Yes, I'm sure!", style: .destructive, handler: {
                
                action in
                
                self.performSegue(withIdentifier: "unwindToMenu", sender: nil)
                
            })
            
            let noAction = UIAlertAction(title: "No", style: .cancel, handler: nil)
            
            controller.addAction(yesAction)
            controller.addAction(noAction)
 
            present(controller, animated: true, completion: nil)
            
        } else {
            performSegue(withIdentifier: "unwindToMenu", sender: nil)
        }
        
    }
    
    private func disapleButtons() {
        for item in fields {
            item.isUserInteractionEnabled = false
        }
    }
    
    private func searchWinner(_ k: Int) -> Bool {
        
        if k > 4 {
            if aiEngine.existsWinner(fields, playerSignature) {
                disapleButtons()
                displayGameStatus.text = "Player won"
                gameEnded = true
                return true
            }
            else if aiEngine.existsWinner(fields, computerSignature) {
                disapleButtons()
                displayGameStatus.text = "Computer won"
                gameEnded = true
                return true
            }
            else if k == 9 {
                disapleButtons()
                displayGameStatus.text = "Tie"
                gameEnded = true
                return true
            }
        }

        return false
    }
    
    @IBAction func fieldTapped(_ sender: UIButton) {
        
        if sender.currentTitle != playerSignature && sender.currentTitle != computerSignature {
            
            sender.setTitle(playerSignature, for: UIControlState())
            k += 1
            
            if !searchWinner(k) {
                DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(1), execute: {
                    self.aiEngine.searchPosition(self.fields, self.computerSignature, self.playerSignature)
                    
                    self.k += 1
                    
                    _ = self.searchWinner(self.k)
                    
                })
            }
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        drawBorders()
        
        if computerGoesFirst! {
            signaturesInit = Signatures(playerSignature: "0", computerSignature: "X")
            
            DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(1), execute: {
                self.aiEngine.searchPosition(self.fields, self.computerSignature, self.playerSignature)
                self.k += 1
            })
        }
        else {
            signaturesInit = Signatures(playerSignature: "X", computerSignature: "0")
        }
    }
    
    var computerSignature: String {
        get {
            return signaturesInit.getComputerSig
        }
    }

    var playerSignature: String {
        get {
            return signaturesInit.getPlayerSig
        }
    }
    
}


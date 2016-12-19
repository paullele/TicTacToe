//
//  ViewController.swift
//  TicTacToe
//
//  Created by apple on 18/12/2016.
//  Copyright © 2016 apple. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    @IBOutlet var fields: [TTTButtons]!
    
    private let aiEngine = AIEngine();
    
    var computerGoesFirst = false
    var alternateTurns = false
    var playerSignature = ""
    var computerSignature = ""
    
    //puts borders around the tic-tac labels
    func drawBorders() {
        for item in fields {
            item.layer.borderWidth = 1
            item.layer.borderColor = UIColor.black.cgColor
        }
    }
    
    func initialSetup(_ computerGoesFirst: Bool, _ playerSignature: inout String, _ computerSignature: inout String) {
        
        if computerGoesFirst {
            computerSignature = "X"
            playerSignature = "0"
        }
        else {
            playerSignature = "X"
            computerSignature = "0"
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(false)
        
        initialSetup(computerGoesFirst, &playerSignature, &computerSignature)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        drawBorders()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        
        
    }
    
}


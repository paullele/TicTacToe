//
//  AIEngine.swift
//  TicTacToe
//
//  Created by apple on 18/12/2016.
//  Copyright © 2016 apple. All rights reserved.
//

import Foundation

class AIEngine {
        
    func decidePosition(_ fields: [TTTButtons], _ computerSignature: String, _ playerSignature: String) {
        
        var decided = false
        
        //from 0
        if(fields[0].text == computerSignature &&
            fields[1].text == computerSignature &&
            fields[2].text != computerSignature &&
            fields[2].text != playerSignature) {
            fields[2].text = computerSignature
            decided = true
        }
        else if(fields[0].text == computerSignature &&
            fields[2].text == computerSignature &&
            fields[1].text != computerSignature &&
            fields[1].text != playerSignature) {
            fields[1].text = computerSignature
            decided = true
        }
        else if(fields[0].text == computerSignature &&
            fields[4].text == computerSignature &&
            fields[8].text != computerSignature &&
            fields[8].text != playerSignature) {
            fields[8].text = computerSignature
            decided = true
        }
        else if(fields[0].text == computerSignature &&
            fields[8].text == computerSignature &&
            fields[4].text != computerSignature &&
            fields[4].text != playerSignature) {
            fields[4].text = computerSignature
            decided = true
        }
        
        if(!decided) {
            var r: Int?
            repeat {
                r = Int(arc4random_uniform(9))
            }
            while(fields[r!].text == computerSignature ||
                    fields[r!].text == playerSignature)
            
            fields[r!].text = computerSignature
        }
    }
    
}

//
//  AIEngine.swift
//  TicTacToe
//
//  Created by apple on 18/12/2016.
//  Copyright © 2016 apple. All rights reserved.
//

import Foundation
import UIKit

class AIEngine {

    func decidePosition(_ fields: [UIButton], _ computerSignature: String, _ playerSignature: String, _ reference: String) -> Bool {
        
        //from 0
        if(fields[0].currentTitle == reference &&
            fields[1].currentTitle == reference &&
            fields[2].currentTitle != computerSignature &&
            fields[2].currentTitle != playerSignature) {
            fields[2].setTitle(computerSignature, for: UIControlState())
            
            return true
        }
        else if(fields[0].currentTitle == reference &&
            fields[2].currentTitle == reference &&
            fields[1].currentTitle != computerSignature &&
            fields[1].currentTitle != playerSignature) {
            fields[1].setTitle(computerSignature, for: UIControlState())
            
            return true
        }
        else if(fields[0].currentTitle == reference &&
            fields[4].currentTitle == reference &&
            fields[8].currentTitle != computerSignature &&
            fields[8].currentTitle != playerSignature) {
            fields[8].setTitle(computerSignature, for: UIControlState())
            
            return true
        }
        else if(fields[0].currentTitle == reference &&
            fields[8].currentTitle == reference &&
            fields[4].currentTitle != computerSignature &&
            fields[4].currentTitle != playerSignature) {
            fields[4].setTitle(computerSignature, for: UIControlState())
            
            return true
        }
        else if(fields[0].currentTitle == reference &&
            fields[3].currentTitle == reference &&
            fields[6].currentTitle != computerSignature &&
            fields[6].currentTitle != playerSignature) {
            fields[6].setTitle(computerSignature, for: UIControlState())
            
            return true
        }
        else if(fields[0].currentTitle == reference &&
            fields[6].currentTitle == reference &&
            fields[3].currentTitle != computerSignature &&
            fields[3].currentTitle != playerSignature) {
            fields[3].setTitle(computerSignature, for: UIControlState())
            
            return true
        }
            
        //from 1
        else if(fields[1].currentTitle == reference &&
            fields[4].currentTitle == reference &&
            fields[7].currentTitle != computerSignature &&
            fields[7].currentTitle != playerSignature) {
            fields[7].setTitle(computerSignature, for: UIControlState())
            
            return true
        }
        else if(fields[1].currentTitle == reference &&
            fields[7].currentTitle == reference &&
            fields[4].currentTitle != computerSignature &&
            fields[4].currentTitle != playerSignature) {
            fields[4].setTitle(computerSignature, for: UIControlState())
            
            return true
        }
        
        //from 2
        else if(fields[2].currentTitle == reference &&
            fields[1].currentTitle == reference &&
            fields[0].currentTitle != computerSignature &&
            fields[0].currentTitle != playerSignature) {
            fields[0].setTitle(computerSignature, for: UIControlState())
            
            return true
        }
        else if(fields[2].currentTitle == reference &&
            fields[5].currentTitle == reference &&
            fields[8].currentTitle != computerSignature &&
            fields[8].currentTitle != playerSignature) {
            fields[8].setTitle(computerSignature, for: UIControlState())
            
            return true
        }
        else if(fields[2].currentTitle == reference &&
            fields[8].currentTitle == reference &&
            fields[5].currentTitle != computerSignature &&
            fields[5].currentTitle != playerSignature) {
            fields[5].setTitle(computerSignature, for: UIControlState())
            
            return true
        }
        else if(fields[2].currentTitle == reference &&
            fields[4].currentTitle == reference &&
            fields[6].currentTitle != computerSignature &&
            fields[6].currentTitle != playerSignature) {
            fields[6].setTitle(computerSignature, for: UIControlState())
            
            return true
        }
        else if(fields[2].currentTitle == reference &&
            fields[6].currentTitle == reference &&
            fields[4].currentTitle != computerSignature &&
            fields[4].currentTitle != playerSignature) {
            fields[4].setTitle(computerSignature, for: UIControlState())
            
            return true
        }
        
        //from 3
        else if(fields[3].currentTitle == reference &&
            fields[4].currentTitle == reference &&
            fields[5].currentTitle != computerSignature &&
            fields[5].currentTitle != playerSignature) {
            fields[5].setTitle(computerSignature, for: UIControlState())
            
            return true
        }
        else if(fields[3].currentTitle == reference &&
            fields[5].currentTitle == reference &&
            fields[4].currentTitle != computerSignature &&
            fields[4].currentTitle != playerSignature) {
            fields[4].setTitle(computerSignature, for: UIControlState())
            
            return true
        }
        
        //from 5
        else if(fields[5].currentTitle == reference &&
            fields[4].currentTitle == reference &&
            fields[3].currentTitle != computerSignature &&
            fields[3].currentTitle != playerSignature) {
            fields[3].setTitle(computerSignature, for: UIControlState())
            
            return true
        }
        
        //from 6
        else if(fields[6].currentTitle == reference &&
            fields[3].currentTitle == reference &&
            fields[0].currentTitle != computerSignature &&
            fields[0].currentTitle != playerSignature) {
            fields[0].setTitle(computerSignature, for: UIControlState())
            
            return true
        }
        else if(fields[6].currentTitle == reference &&
            fields[4].currentTitle == reference &&
            fields[2].currentTitle != computerSignature &&
            fields[2].currentTitle != playerSignature) {
            fields[2].setTitle(computerSignature, for: UIControlState())
            
            return true
        }
        else if(fields[6].currentTitle == reference &&
            fields[7].currentTitle == reference &&
            fields[8].currentTitle != computerSignature &&
            fields[8].currentTitle != playerSignature) {
            fields[8].setTitle(computerSignature, for: UIControlState())
            
            return true
        }
        else if(fields[6].currentTitle == reference &&
            fields[8].currentTitle == reference &&
            fields[7].currentTitle != computerSignature &&
            fields[7].currentTitle != playerSignature) {
            fields[7].setTitle(computerSignature, for: UIControlState())
            
            return true
        }
            
        //from 7
        else if(fields[7].currentTitle == reference &&
            fields[4].currentTitle == reference &&
            fields[1].currentTitle != computerSignature &&
            fields[1].currentTitle != playerSignature) {
            fields[1].setTitle(computerSignature, for: UIControlState())
            
            return true
        }
            
        //from 8
        else if(fields[8].currentTitle == reference &&
            fields[5].currentTitle == reference &&
            fields[2].currentTitle != computerSignature &&
            fields[2].currentTitle != playerSignature) {
            fields[2].setTitle(computerSignature, for: UIControlState())
            
            return true
        }
        else if(fields[8].currentTitle == reference &&
            fields[4].currentTitle == reference &&
            fields[0].currentTitle != computerSignature &&
            fields[0].currentTitle != playerSignature) {
            fields[0].setTitle(computerSignature, for: UIControlState())
            
            return true
        }
        
        return false
        
    }
    
    func searchPosition(_ fields: [UIButton], _ computerSignature: String, _ playerSignature: String) {
        
        if !decidePosition(fields, computerSignature, playerSignature, computerSignature) {
            if !decidePosition(fields, computerSignature, playerSignature, playerSignature) {
                
                var r: Int?
                repeat {
                    r = Int(arc4random_uniform(9))
                }
                    while(fields[r!].currentTitle == computerSignature ||
                        fields[r!].currentTitle == playerSignature)
                
                fields[r!].setTitle(computerSignature, for: UIControlState())
            }
        }
    }
    
    
    func existsWinner(_ fields: [UIButton], _ reference: String) -> Bool {
        
        //from 0
        if (reference == fields[0].currentTitle &&
            fields[0].currentTitle == fields[1].currentTitle &&
            fields[1].currentTitle == fields[2].currentTitle) {
            
            return true
        }
        else if (reference == fields[0].currentTitle &&
            fields[0].currentTitle == fields[4].currentTitle &&
            fields[4].currentTitle == fields[8].currentTitle) {
            
            return true
        }
        else if (reference == fields[0].currentTitle &&
            fields[0].currentTitle == fields[3].currentTitle &&
            fields[3].currentTitle == fields[6].currentTitle) {
            
            return true
        }
            
        //from 1
        else if (reference == fields[1].currentTitle &&
            fields[1].currentTitle == fields[4].currentTitle &&
            fields[4].currentTitle == fields[7].currentTitle) {
            
            return true
        }
        
        //from 2
        if (reference == fields[2].currentTitle &&
            fields[2].currentTitle == fields[4].currentTitle &&
            fields[4].currentTitle == fields[6].currentTitle) {
            
            return true
        }
        else if (reference == fields[2].currentTitle &&
            fields[2].currentTitle == fields[5].currentTitle &&
            fields[5].currentTitle == fields[8].currentTitle) {
            
            return true
        }
        
        //from 3
        if (reference == fields[3].currentTitle &&
            fields[3].currentTitle == fields[4].currentTitle &&
            fields[4].currentTitle == fields[5].currentTitle) {
            
            return true
        }
        
        //from 6
        if (reference == fields[6].currentTitle &&
            fields[6].currentTitle == fields[7].currentTitle &&
            fields[7].currentTitle == fields[8].currentTitle) {
            
            return true
        }
        return false
    }
    
}

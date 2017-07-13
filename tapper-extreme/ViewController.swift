//
//  ViewController.swift
//  tapper-extreme
//
//  Created by Jeremiah on 10/18/16.
//  Copyright © 2016 Yaheard. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Properties
    var maxTaps = 0
    var currentTaps = 0
    
    
    //Outlets
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var howManyTapsTxt: UITextField!
    @IBOutlet weak var playbtn: UIButton!
    
    @IBOutlet weak var tapBtn: UIButton!
    @IBOutlet weak var tapLbl: UILabel!
    
    @IBAction func onCoinTapped(sender: UIButton!) {
        currentTaps = currentTaps + 1
        updateTapsLbl()
        
        if isGameOver() {
            restartGame()
            
        }

    }
    
    @IBAction func onPlayBtnPressed(sender: UIButton!) {
        
        
        if howManyTapsTxt.text != nil && howManyTapsTxt.text != "" {
            logoImg.hidden = true
            playbtn.hidden = true
            howManyTapsTxt.hidden = false
            
            tapBtn.hidden = false
            tapLbl.hidden = false
            
            maxTaps = Int(howManyTapsTxt.text!)!
            currentTaps = 0
            updateTapsLbl()
            
            
        }
        
    }
    
    func restartGame() {
        maxTaps = 0
        howManyTapsTxt.text = ""
        logoImg.hidden = false
        playbtn.hidden = false
        howManyTapsTxt.hidden = false
        
        tapBtn.hidden = true
        tapLbl.hidden = true
    }
    
    func isGameOver() -> Bool {
        if currentTaps >= maxTaps {
            return true
        } else {
            return false
        }
        
    }
    
    func updateTapsLbl() {
        tapLbl.text = "\(currentTaps) Taps"
        
    }
    

}


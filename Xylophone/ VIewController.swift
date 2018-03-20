//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation



class ViewController: UIViewController{
    
var noteKeySound = AVAudioPlayer()
    
override func viewDidLoad() {
    super.viewDidLoad()
    }



@IBAction func notePressed(_ sender: UIButton) {
    let buttonNum = sender.tag
    let url = Bundle.main.url(forResource: "note\(buttonNum)", withExtension: "wav")
        do {
            try noteKeySound = AVAudioPlayer(contentsOf: url!)
        }
        catch {
            print("error")
        }
    noteKeySound.play()
    
    }
    
  

}


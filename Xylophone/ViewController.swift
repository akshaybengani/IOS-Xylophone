//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func playSound(fileName: String){
        let path = Bundle.main.path(forResource: fileName, ofType:"wav")!
        let url = URL(fileURLWithPath: path)

        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch {
            // couldn't load file :(
        }
    }
    
   
    @IBAction func cButton(_ sender: Any) {
        playSound(fileName: "C")
    }
    
    @IBAction func dButton(_ sender: Any) {
        playSound(fileName: "D")
    }
    
    @IBAction func eButton(_ sender: Any) {
        playSound(fileName: "E")
    }
    
    @IBAction func fButton(_ sender: Any) {
        playSound(fileName: "F")
    }
    
    @IBAction func gButton(_ sender: Any) {
        playSound(fileName: "G")
    }
    
    @IBAction func aButton(_ sender: Any) {
        playSound(fileName: "A")
    }
    
    @IBAction func bButton(_ sender: Any) {
        playSound(fileName: "B")
    }
    
}


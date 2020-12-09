//
//  ViewController.swift
//  Hijaiyah
//
//  Created by Edi Sunardi on 19/11/20.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var hurufHijaiyah: UILabel!
    var player: AVAudioPlayer?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnSound(_ sender: UIButton) {
        playSound(sound: sender.currentTitle!)
    }
    
    
    func playSound(sound: String) {
        let url = Bundle.main.url(forResource: sound, withExtension: "mp3")
        
        player = try! AVAudioPlayer(contentsOf: url!)
        player?.play()
    
    }
}


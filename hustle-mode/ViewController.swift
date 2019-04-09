//
//  ViewController.swift
//  hustle-mode
//
//  Created by Ahmed Adnan on 3/31/19.
//  Copyright © 2019 Ahmed Adnan. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {

    @IBOutlet weak var DarkblueBG: UIImageView!
    @IBOutlet weak var CloudHolder: UIView!
    @IBOutlet weak var onlb: UILabel!
    @IBOutlet weak var hustlelbl: UILabel!
    @IBOutlet weak var rocet: UIImageView!
    @IBOutlet weak var PowerBtn: UIButton!
    var player : AVAudioPlayer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path=Bundle.main.path(forResource: "hustle-on", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do{
            player=try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        }catch let error as NSError{
            print(error.description)
        }
        
        
    }

    @IBAction func Powebuttonpressd(_ sender: Any) {
        CloudHolder.isHidden=false
        DarkblueBG.isHidden=true
        PowerBtn.isHidden=true
        player.play()
        UIView.animate(withDuration: 2.3, animations:{
            self.rocet.frame=CGRect(x: 0, y: 140, width: 375, height: 402)
        }){(finished) in self.hustlelbl.isHidden=false
            self.onlb.isHidden=false
        }
    }
    
}


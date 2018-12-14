//
//  ViewController.swift
//  WarApp
//
//  Created by Sina Hemmati on 2018-10-08.
//  Copyright © 2018 Sina Hemmati. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var leftscore=0
    var rightscore=0
    
    
    @IBOutlet weak var leftcard: UIImageView!
    
    @IBOutlet weak var rightcard: UIImageView!
    
    @IBOutlet weak var player: UILabel!
    
    @IBAction func deal(_ sender: Any) {
        let randomcardleft = arc4random_uniform(13) + 2
        
        leftcard.image = UIImage(named: "card\(randomcardleft)")
        
        let randomcardright = arc4random_uniform(13) + 2
        
        
        rightcard.image = UIImage(named: "card\(randomcardright)")
        
        if(randomcardright>randomcardleft){
            rightscore+=1
        }
        else if(randomcardright==randomcardleft){
            
        }else{
            leftscore+=1
        }
        player.text = String(leftscore)
        cpu.text = String(rightscore)
    }
    @IBOutlet weak var cpu: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}


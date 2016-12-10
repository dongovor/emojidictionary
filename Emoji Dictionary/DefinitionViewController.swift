//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Dmitry Cherkasov on 12/10/16.
//  Copyright © 2016 Dmitry Cherkasov. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var emoji = "NO EMOJI"
    
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var emojiTextLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        emojiLabel.text = emoji
        
        if emoji == "💩" {
            emojiTextLabel.text = "This is da POOO"
        }
        
        if emoji == "😀" {
            emojiTextLabel.text = "This is da smile"
        }
        
        if emoji == "😎" {
            emojiTextLabel.text = "This is da glasses guy"
        }
        
        if emoji == "😛" {
            emojiTextLabel.text = "This is da smile with tongue"
        }
        
        if emoji == "😻" {
            emojiTextLabel.text = "This is da cat in love smile"
        }
        
        if emoji == "🐹" {
            emojiTextLabel.text = "This is da hamster"
        }
        
        if emoji == "🍕" {
            emojiTextLabel.text = "This is da pizza"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

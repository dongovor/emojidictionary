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
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var birthLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        emojiLabel.text = emoji
        
        if emoji == "💩" {
            emojiTextLabel.text = "This is da POOO"
            categoryLabel.text = "Funny"
            birthLabel.text = "Birth year: 2015"
        }
        
        if emoji == "😀" {
            emojiTextLabel.text = "This is da smile"
            categoryLabel.text = "Smile"
            birthLabel.text = "Birth year: 2001"
        }
        
        if emoji == "😎" {
            emojiTextLabel.text = "This is da sunglasses guy"
            categoryLabel.text = "Smile"
            birthLabel.text = "Birth year: 2000"
        }
        
        if emoji == "😛" {
            emojiTextLabel.text = "This is da smile with tongue"
            categoryLabel.text = "Smile"
            birthLabel.text = "Birth year: 2006"
        }
        
        if emoji == "😻" {
            emojiTextLabel.text = "This is da cat in love smile"
            categoryLabel.text = "Smile"
            birthLabel.text = "Birth year: 2013"
        }
        
        if emoji == "🐹" {
            emojiTextLabel.text = "This is da hamster"
            categoryLabel.text = "Funny"
            birthLabel.text = "Birth year: 2015"
        }
        
        if emoji == "🍕" {
            emojiTextLabel.text = "This is da pizza"
            categoryLabel.text = "Funny"
            birthLabel.text = "Birth year: 2013"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

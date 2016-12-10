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
        print(emoji)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

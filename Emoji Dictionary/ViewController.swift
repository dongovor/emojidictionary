//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Dmitry Cherkasov on 12/10/16.
//  Copyright © 2016 Dmitry Cherkasov. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var mainTableView: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mainTableView.dataSource = self
        mainTableView.delegate = self
        emojis = makeEmojiArray()
        
    }
    // table
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let emoji = emojis[indexPath.row]
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! String
    }
    
    // table
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "💩"
        emoji1.birthYear = 2010
        emoji1.category = "Funny"
        emoji1.definition = "The pooop emoji"
        
        let emoji2 = Emoji()
        emoji1.stringEmoji = "😀"
        emoji1.birthYear = 2001
        emoji1.category = "Smile"
        emoji1.definition = "The smile emoji"
        
        let emoji3 = Emoji()
        emoji1.stringEmoji = "😎"
        emoji1.birthYear = 2011
        emoji1.category = "Smile"
        emoji1.definition = "The sunglasses dude emoji"
        
        let emoji4 = Emoji()
        emoji1.stringEmoji = "😛"
        emoji1.birthYear = 2001
        emoji1.category = "Smile"
        emoji1.definition = "The funny dude emoji"
        
        let emoji5 = Emoji()
        emoji1.stringEmoji = "😻"
        emoji1.birthYear = 2013
        emoji1.category = "Smile"
        emoji1.definition = "The cat in love emoji"
        
        let emoji6 = Emoji()
        emoji1.stringEmoji = "🐹"
        emoji1.birthYear = 2015
        emoji1.category = "Smile"
        emoji1.definition = "The hamster emoji"
        
        let emoji7 = Emoji()
        emoji1.stringEmoji = "🍕"
        emoji1.birthYear = 2015
        emoji1.category = "Smile"
        emoji1.definition = "The pizza emoji"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6, emoji7]
    }

}


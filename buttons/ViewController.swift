//
//  ViewController.swift
//  buttons
//
//  Created by Tobias Schultze on 05.06.17.
//  Copyright © 2017 Tobias Schultze. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var daCoolTableView: UITableView!

    
    var smilie : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        daCoolTableView.dataSource = self
        daCoolTableView.delegate = self
        smilie = makeAnEmojiArray()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return smilie.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = smilie[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let emoji = smilie[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func   prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        
        defVC.emoji = sender as! Emoji
    }
    
    func makeAnEmojiArray() -> [Emoji] {
       
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😅"
        emoji1.birthYear = 2010
        emoji1.category = "Smiley"
        emoji1.description = "This is for shaming"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😎"
        emoji2.birthYear = 2010
        emoji2.category = "Smiley"
        emoji2.description = "This is a cool one"

        let emoji3 = Emoji()
        emoji3.stringEmoji = "👌"
        emoji3.birthYear = 2010
        emoji3.category = "Smiley"
        emoji3.description = "Good Job bro"

        let emoji4 = Emoji()
        emoji4.stringEmoji = "🖕"
        emoji4.birthYear = 2010
        emoji4.category = "Smiley"
        emoji4.description = "FU** OFF"

        let emoji5 = Emoji()
        emoji5.stringEmoji = "🐌"
        emoji5.birthYear = 2010
        emoji5.category = "Animal"
        emoji5.description = "keep calm"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "🍆"
        emoji6.birthYear = 2010
        emoji6.category = "Fruit"
        emoji6.description = "Healthy Shit"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6]

    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


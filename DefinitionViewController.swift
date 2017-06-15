//
//  DefinitionViewController.swift
//  buttons
//
//  Created by Tobias Schultze on 08.06.17.
//  Copyright © 2017 Tobias Schultze. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var defLabel: UILabel!
    @IBOutlet weak var defText: UILabel!
    @IBOutlet weak var defCategory: UILabel!
    @IBOutlet weak var defBirth: UILabel!
    
    var emoji = Emoji()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(emoji)
        defLabel.text = emoji.stringEmoji
        
        defText.text = emoji.description
        defCategory.text = emoji.category
        defBirth.text = "Birthyear \(emoji.birthYear)"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

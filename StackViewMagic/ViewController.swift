//
//  ViewController.swift
//  StackViewMagic
//
//  Created by Rickey Hrabowskie on 9/22/16.
//  Copyright © 2016 Rickey Hrabowskie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var emojiView: [UIView]! {
        didSet {
            emojiView.forEach { // Collection of UIViews
                $0.isHidden = true
            }
        }
    }
    
    @IBOutlet weak var emojiText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func pizzaBtnPressed(_ sender: AnyObject) {
        hideButtons()
        emojiText.text = "🍕"
    }
    @IBAction func worldBtnPressed(_ sender: AnyObject) {
        hideButtons()
        emojiText.text = "🌎"
    }
    @IBAction func gameBtnPressed(_ sender: AnyObject) {
        hideButtons()
        emojiText.text = "👾"
    }
    
    @IBAction func hotBtnPressed(_ sender: AnyObject) {
        hideButtons()
        emojiText.text = "🔥"
    }
    
    @IBAction func coffeeBtnPressed(_ sender: AnyObject) {
        hideButtons()
        emojiText.text = "☕️"
    }
    
    @IBAction func rocketBtnPressed(_ sender: AnyObject) {
        hideButtons()
        emojiText.text = "🚀"
    }
    
    @IBAction func tacoBtnPressed(_ sender: AnyObject) {
        hideButtons()
        emojiText.text = "🍕"
    }
    
    @IBAction func onSettingsButtonPressed(_ sender: AnyObject) {
        hideButtons()
        emojiText.text = "🌮"
    }
    
    func hideButtons() {
        UIView.animate(withDuration: 0.3) { // Inside of a closure always use self
            self.emojiView.forEach {
                $0.isHidden = !$0.isHidden
            }
        }
    }

}


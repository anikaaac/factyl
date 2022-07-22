//
//  answersViewController.swift
//  factyl
//
//  Created by Scholar on 7/21/22.
//

import UIKit

class answersViewController: UIViewController {
    var question = ""
    var answer = ""
//
//    var questionTwo = ""
//    var answerTwo = ""
//
    
    
    @IBOutlet weak var questionOne: UILabel!
    @IBOutlet weak var answerOne: UITextView!
    @IBOutlet weak var likeButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        questionOne.text = ("\(question)")
        answerOne.text = ("\(answer)")

    }
    
    
    @IBAction func likeTapped(_ sender: Any) {
//        likeButton.setTitleColor(UIColor.red,for: .normal)
//        likeButton.titleLabel?.backgroundColor = UIColor.systemRed
    }
    
    @IBAction func shareTapped(_ sender: Any) {
        let url = URL(string: "https://www.gmail.com/")
        UIApplication.shared.open( url!, options: [:], completionHandler: nil)
    }
    

}

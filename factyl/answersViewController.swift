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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        questionOne.text = ("\(question)")
        answerOne.text = ("\(answer)")
        
       // questionOne.text = ("\(questionTwo)")
       // answerOne.text = ("\(answerTwo)")

        // Do any additional setup after loading the view.
    }
    


}

//
//  financeViewController.swift
//  factyl
//
//  Created by Scholar on 7/20/22.
//

import UIKit

class financeViewController: UIViewController {
    //first button stuff
    var firstQuestion = ""
    var firstAnswer = ""
    
    
    //second
    //var secondQuestion = ""
   // var secondAnswer = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
  //buttons
    @IBAction func firstButton(_ sender: Any) {
        firstQuestion = "how do you save money?"
        firstAnswer = "Keep track of your spending. If you know where your money is going it will be easier to make changes if you need to. Try using BALANCE's Fritter Finder form for a week or two to find out where your money is going. Separate wants from needs. Do you really need that 42-inch flat screen television? When money is tight it should not be spent unless absolutely necessary. Avoid using credit to pay your bills. While it may make things easier now, using credit only increases your monthly payments in the future. Save regularly."
    }
    
    @IBAction func secondButton(_ sender: Any) {
        firstQuestion = "what is a decent budget for you?"
        firstAnswer = "lolz"
        performSegue(withIdentifier: "findAnswer", sender: Any?.self)
        
    }
    
    @IBAction func thirdButton(_ sender: Any) {
        firstQuestion = "how much would you spend on stocks?"
        firstAnswer = "lolz"
        performSegue(withIdentifier: "findAnswer", sender: Any?.self)
    }
    
    @IBAction func fourthButton(_ sender: Any) {
        firstQuestion = "how has your experience been on the stock market?"
        firstAnswer = "lolz"
        performSegue(withIdentifier: "findAnswer", sender: Any?.self)
        
    }
    
    @IBAction func fifthButton(_ sender: Any) {
        firstQuestion = "how much have you earned this year?"
        firstAnswer = "lolz"
        performSegue(withIdentifier: "findAnswer", sender: Any?.self)
        
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let addVC = segue.destination as? answersViewController{
            //first
            addVC.question = firstQuestion
            addVC.answer = firstAnswer
            
//            addVC.questionTwo = secondQuestion
//            addVC.answerTwo = secondAnswer
            
            
            
        }
    }
    

   
}

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
    
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    
    @IBOutlet weak var pageNumber: UILabel!
    
    let textView = UITextView(frame: CGRect.zero)
    
    var faq : [FaqCD] = []
    var enteredText = ""
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext{
            if let coreDataFaqs = try? context.fetch(FaqCD.fetchRequest()) as? [FaqCD]{
                    faq = coreDataFaqs
            }
        }
        
        faq[0].question = ""
        faq[1].question = "how do you save?"
        faq[2].question = "what is a decent budget for you?"
        faq[3].question = "how much would you spend on stocks?"
        faq[4].question = "how has your experience been on the stock market?"
        faq[5].question = "how much have you earned this past year?"
    }
    

  //buttons
    
    @IBAction func addQuestion(_ sender: Any) {
        //alert for asking
        let alertController = UIAlertController(title: "ask question \n\n\n\n\n", message: nil, preferredStyle: .alert)
           let cancelAction = UIAlertAction.init(title: "Cancel", style: .default) { (action) in
               alertController.view.removeObserver(self, forKeyPath: "bounds")
           }
           alertController.addAction(cancelAction)

           let saveAction = UIAlertAction(title: "Submit", style: .default) { (action) in
               self.enteredText = self.textView.text
               alertController.view.removeObserver(self, forKeyPath: "bounds")
           }
       //CoreData
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            let faqReal = FaqCD(entity: FaqCD.entity(), insertInto: context)
            faqReal.question = enteredText
            try? context.save()
        }
    
        
        alertController.addAction(saveAction)
           alertController.view.addObserver(self, forKeyPath: "bounds", options: NSKeyValueObservingOptions.new, context: nil)
               self.textView.backgroundColor = UIColor.white
               self.textView.textContainerInset = UIEdgeInsets.init(top: 8, left: 5, bottom: 8, right: 5)
           alertController.view.addSubview(self.textView)

        
           self.present(alertController, animated: true, completion: nil)
    }
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if keyPath == "bounds"{
            if let rect = (change?[NSKeyValueChangeKey.newKey] as? NSValue)?.cgRectValue {
                let margin: CGFloat = 8
                let xPos = rect.origin.x + margin
                let yPos = rect.origin.y + 54
                let width = rect.width - 2 * margin
                let height: CGFloat = 90

                textView.frame = CGRect.init(x: xPos, y: yPos, width: width, height: height)
            }
        }
    }

    
    //buttons
    @IBAction func rightButton(_ sender: Any) {
        counter += 1
        pageNumber.text = String(counter + 1)
    }
    
    @IBAction func backButton(_ sender: Any) {
        counter -= 1
        pageNumber.text = String(counter + 1)
    }
    
    func faqNumber(num: Int) -> Int{
        var page = num + (counter * 5)
        if faq.count <= page{
            page = 0
        }
        return(page)
    }
    
    @IBAction func firstButton(_ sender: Any) {
        firstQuestion = faq[faqNumber(num: 1)].question!
        firstAnswer = "Keep track of your spending. If you know where your money is going it will be easier to make changes if you need to. Try using BALANCE's Fritter Finder form for a week or two to find out where your money is going. Separate wants from needs. Do you really need that 42-inch flat screen television? When money is tight it should not be spent unless absolutely necessary. Avoid using credit to pay your bills. While it may make things easier now, using credit only increases your monthly payments in the future. Save regularly."
    }
    
    @IBAction func secondButton(_ sender: Any) {
        firstQuestion = faq[faqNumber(num:2)].question!
        firstAnswer = "lolz"
        performSegue(withIdentifier: "findAnswer", sender: Any?.self)
        
    }
    
    @IBAction func thirdButton(_ sender: Any) {
        firstQuestion = faq[faqNumber(num:3)].question!
        firstAnswer = "lolz"
        performSegue(withIdentifier: "findAnswer", sender: Any?.self)
    }
    
    @IBAction func fourthButton(_ sender: Any) {
        firstQuestion = faq[faqNumber(num:4)].question!
        firstAnswer = "lolz"
        performSegue(withIdentifier: "findAnswer", sender: Any?.self)
        
    }
    
    @IBAction func fifthButton(_ sender: Any) {
        firstQuestion = faq[faqNumber(num:5)].question!
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

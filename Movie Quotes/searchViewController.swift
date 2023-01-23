//
//  searchViewController.swift
//  Movie Quotes
//
//  Created by admin on 12/4/22.
//

import UIKit

class searchViewController: UIViewController {

    @IBOutlet weak var home: UIButton!
    
    @IBOutlet weak var getAnswer: UIButton!
    
    @IBOutlet weak var userInputField: UITextField!
    
    @IBOutlet weak var question: UILabel!
    
    @IBOutlet weak var score: UILabel!
    
   
    @IBOutlet weak var returnButton: UIButton!
   // var autoField  = AutocompleteField()
    
    var idnxP: [IndexPath] = []
    var randIndx = -1
    var allMovies: [Movie] = []
    var correctMovies: [Movie] = []
    var image = Data()
    var gameScore = 0
    
    override func viewDidLoad() {
     
        super.viewDidLoad()
        
        randIndx = Int.random(in: 0..<allMovies.count)
        userInputField.delegate = self
        score.text = "Score :\(gameScore)"
        setQuestion()
        
    }
   
    
    
    @IBAction func showAnswer(_ sender: Any) {
        
        performSegue(withIdentifier: "showAnswer", sender: self)
    }
    
    
    @IBAction func returnButtonAction(_ sender: UIButton) {
        self.navigationController?.popToRootViewController(animated: true)
     
    }
    
    
    
    @IBAction func Home(_ sender: Any) {
            setQuestion()
    }
    
    func setQuestion(){
        randIndx = Int.random(in: 0..<allMovies.count)
        question.text = allMovies[randIndx].quote
        userInputField.placeholder = allMovies[randIndx].title
        
        
      }

}


extension searchViewController: UITextFieldDelegate{
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        if self.userInputField.text == self.allMovies[randIndx].title {
                //true
            print("Done checking")
            let photo = allMovies[randIndx].image.jpegData(compressionQuality: 1.0)
            image = photo!
            gameScore += 1
            score.text = "Score :\(gameScore)"
            setQuestion()
            performSegue(withIdentifier: "pushImage", sender: self)
            //self.navigationController?.pushViewController(correctPage, animated: true)
            
        }
        else{
            print("Wrong Answer")
            setQuestion()
            
        }
        
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let dest = segue.destination as? AnswerImageViewController
        dest?.image = image
        let n = segue.destination as? GivingAnswerViewController
        n?.label = allMovies[randIndx].title
    }
    
    
}

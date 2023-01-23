//
//  GivingAnswerViewController.swift
//  Movie Quotes
//
//  Created by Mohammed Alsiraji on 05/12/2022.
//

import UIKit





class GivingAnswerViewController: UIViewController {

    
    @IBOutlet weak var answerLabel: UILabel!
    
    var label: String? = String()
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.answerLabel.text = self.label

        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0){
            self.dismiss(animated: true)

        }
        
        
        
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

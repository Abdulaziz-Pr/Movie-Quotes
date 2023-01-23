//
//  AnswerImageViewController.swift
//  Movie Quotes
//
//  Created by Mohammed Alsiraji on 05/12/2022.
//

import UIKit

class AnswerImageViewController: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    var image = Data()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0){
        //         let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "secondviewcontroller") as! secondviewcontroller
        //                    self.present(nextVC, animated: true, completion: nil)
        //                }
        //
        //
        self.imageView.image = UIImage(data: self.image)
        
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

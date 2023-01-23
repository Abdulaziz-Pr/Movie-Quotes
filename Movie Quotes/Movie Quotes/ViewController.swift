//
//  ViewController.swift
//  Movie Quotes
//
//  Created by admin on 12/4/22.
//

import UIKit

class ViewController: UIViewController  {
    

    
    @IBOutlet weak var collectionView: UICollectionView!
    var selectionRelult: [IndexPath]  = []
    var cellDataArray: [CollectionViewCell] = []
    var celIndexP: [Int] = []
    lazy var swipeGuesture: UISwipeGestureRecognizer = {
        let guesture = UISwipeGestureRecognizer()
        guesture.direction = .left
        guesture.addTarget(self, action: #selector (goToQuestionView))
        return guesture
        
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.collectionViewLayout = UICollectionViewFlowLayout()
        // Do any additional setup after loading the view.
        collectionView.addGestureRecognizer(swipeGuesture)
        // swap right
        collectionView.allowsMultipleSelection = true
        collectionView.selectionFollowsFocus = true
        collectionView.reloadData()
        
    }
    @objc func  goToQuestionView(){
        if self.collectionView.indexPathsForSelectedItems == []{
            let alerController = UIAlertController(title: "No Selection", message: "Please select a movie to go to the next page", preferredStyle: .alert)
            let cancelAction = UIAlertAction(title: "OK", style: .cancel)
            alerController.addAction(cancelAction)
            present(alerController, animated: true)}
        
        else{
            
            print("Swipe Right")
            self.navigationController?.navigationBar.isHidden = true
            performSegue(withIdentifier: "Right", sender: self)
            print("cell items count ",self.collectionView.indexPathsForSelectedItems)
            
        }
    }

}
extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCell", for: indexPath) as! CollectionViewCell
        cell.setup(movie: movies[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(movies[indexPath.row].title)
        self.collectionView.cellForItem(at: indexPath)?.isHighlighted = true
        self.collectionView.cellForItem(at: indexPath)?.backgroundColor = .green
        //let cell = self.collectionView.cellForItem(at: indexPath) as! CollectionViewCell
//        if collectionView.cellForItem(at: indexPath)?.isSelected == true{
//             print("stat",collectionView.cellForItem(at: indexPath)?.isSelected)
//            collectionView.cellForItem(at: indexPath)?.isSelected = false
//        }
//        else {
//
//            collectionView.cellForItem(at: indexPath)?.isSelected = true
//            print("stat",collectionView.cellForItem(at: indexPath)?.isSelected)
//
//        }
//        //cel.tintColor = UIColor.black
//        print("stat",collectionView.cellForItem(at: indexPath)?.isSelected)

    }
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        self.collectionView.cellForItem(at: indexPath)?.backgroundColor = .white
    }
   
    
    
}
extension ViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 150, height: 250)
    }
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if self.collectionView.indexPathsForSelectedItems == nil{
            let alerController = UIAlertController(title: "No Selection", message: "Please select a movie to go to the next page", preferredStyle: .alert)
            let cancelAction = UIAlertAction(title: "OK", style: .cancel)
            alerController.addAction(cancelAction)
            present(alerController, animated: true)}
        else {
                let indexCollection = self.collectionView.indexPathsForSelectedItems!
                let movieController = segue.destination as? searchViewController
                var selectedMovies: [Movie] = []
                for indxpath in indexCollection {
                    selectedMovies.append(movies[indxpath.row])
                }
            
                movieController?.allMovies = selectedMovies
        }
        
    }
        
    }
    
    


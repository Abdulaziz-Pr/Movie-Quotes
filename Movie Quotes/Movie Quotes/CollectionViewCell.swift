//
//  CollectionViewCell.swift
//  Movie Quotes
//
//  Created by admin on 12/4/22.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var title: UILabel!
    
    @IBOutlet weak var imagemov: UIImageView!
    
    var quote: String!
    
    func setup(movie: Movie){
        imagemov.image = movie.image
        title.text = movie.title
        quote = movie.quote
    }
    
}

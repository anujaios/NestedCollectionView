//
//  MealCollectionViewCell.swift
//  NestedCollectionView
//
//  Created by Anuja Ladge on 04/02/24.
//

import UIKit

class MealCollectionViewCell: UICollectionViewCell {
    var flag = false
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var name: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}

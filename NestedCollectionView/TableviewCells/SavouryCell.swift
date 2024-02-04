//
//  SavouryCell.swift
//  NestedCollectionView
//
//  Created by Anuja Ladge on 04/02/24.
//

import UIKit

class SavouryCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    var savouryMenu = [MenuModel(image: UIImage(named:"Shev-puri"), name: "Shev-puri"),
                         MenuModel(image: UIImage(named:"Pani-puri"), name: "Pani-puri"),
                         MenuModel(image: UIImage(named:"Ragda"), name: "Ragda"),
                         MenuModel(image: UIImage(named:"Miso-Soup"), name: "Miso-Soup"),
                         MenuModel(image: UIImage(named: "Shakshuka"), name: "Shakshuka"),
                         MenuModel(image: UIImage(named: "Pakoras"), name: "Pakoras"),
                         MenuModel(image: UIImage(named: "Dhokla"), name: "Dhokla"),
                       MenuModel(image: UIImage(named: "Kebab"), name: "Kebab"),
    ]
   
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.register(UINib(nibName: "SavouryCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "SavouryCollectionViewCell")
        collectionView.delegate = self
        collectionView.dataSource = self
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return savouryMenu.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = collectionView.dequeueReusableCell(withReuseIdentifier: "SavouryCollectionViewCell", for: indexPath) as! SavouryCollectionViewCell
        item.name.text = savouryMenu[indexPath.row].name
        item.image.image = savouryMenu[indexPath.row].image
        return item
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.frame.width * 0.37
        return CGSize(width: width, height: width)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        let inset = collectionView.frame.width
        return UIEdgeInsets(top: inset * 0.05, left: inset * 0.05, bottom: inset * 0.05, right: inset * 0.05)
    }
    
    
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

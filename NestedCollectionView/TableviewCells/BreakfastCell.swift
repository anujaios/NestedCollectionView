//
//  BreakfastCell.swift
//  NestedCollectionView
//
//  Created by Anuja Ladge on 04/02/24.
//

import UIKit

class BreakfastCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    var breakfastMenu = [MenuModel(image: UIImage(named:"Uttapam"), name: "Uttapam"),
                         MenuModel(image: UIImage(named:"Dosa"), name: "Dosa"),
                         MenuModel(image: UIImage(named:"Vada-Pav"), name: "Vada-Pav"),
                         MenuModel(image: UIImage(named:"Kanda-Bhaji"), name: "Kanda-Bhaji"),
                         MenuModel(image: UIImage(named: "Paratha"), name: "Paratha"),
                         MenuModel(image: UIImage(named: "Medu-Vada"), name: "Medu-Vada"),
                         MenuModel(image: UIImage(named: "Omelette-Pav"), name: "Omelette-Pav"),]
   
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.register(UINib(nibName: "BreakfastCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "BreakfastCollectionViewCell")
        collectionView.delegate = self
        collectionView.dataSource = self
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return breakfastMenu.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = collectionView.dequeueReusableCell(withReuseIdentifier: "BreakfastCollectionViewCell", for: indexPath) as! BreakfastCollectionViewCell
        item.name.text = breakfastMenu[indexPath.row].name
        item.BreakFastImage.image = breakfastMenu[indexPath.row].image
        return item
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.frame.width * 0.3
        return CGSize(width: width, height: width)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        let inset = collectionView.frame.width
        return UIEdgeInsets(top: inset * 0.1, left: inset * 0.05, bottom: inset * 0.1, right: inset * 0.05)
    }
    
    
    
    
    
    
    
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}

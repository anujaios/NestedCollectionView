//
//  ViewController.swift
//  NestedCollectionView
//
//  Created by Anuja Ladge on 04/02/24.
//

import UIKit

class ViewController: UIViewController{
    
    @IBOutlet weak var tableView: UITableView!
    
    let headerSectionTitles = ["Break Fast","Savoury","Meal"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "BreakfastCell", bundle: nil), forCellReuseIdentifier: "BreakfastCell")
        tableView.register(UINib(nibName: "SavouryCell", bundle: nil), forCellReuseIdentifier: "SavouryCell")
        tableView.register(UINib(nibName: "MealCell", bundle: nil), forCellReuseIdentifier: "MealCell")
    }


}

extension ViewController:UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section{
        case 0 :
            return "Break Fast"
        case 1:
            return "Savoury"
        case 2:
            return "Meal"
            
        default:
            return nil
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "BreakfastCell", for: indexPath) as! BreakfastCell
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "SavouryCell", for: indexPath) as! SavouryCell
            return cell
            
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "MealCell", for: indexPath) as! MealCell
            return cell
            
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return 150
        case 1:
            return 180
        case 2:
            return 300
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        if let headerView = view as? UITableViewHeaderFooterView {
            headerView.textLabel?.textColor = .black
            headerView.textLabel?.font = UIFont.boldSystemFont(ofSize: 15)
            //headerView.textLabel?.frame = headerView.bounds
        }
    }
}


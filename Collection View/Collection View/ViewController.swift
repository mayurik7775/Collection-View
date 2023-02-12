//
//  ViewController.swift
//  Collection View
//
//  Created by Mac on 07/02/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myCollectionView: UICollectionView!
    var name :[String] = ["vadapav","thali","shevbhaji","padmavat","paneer","pathan","pavbhaji","ShevBhaji","Padmavat","Paneer","Pathan","PavBhaji","pen","pencil","poha","puribhaji","ramleela","VadaPav","Thali","ShevBhaji","Padmavat","ShevBhaji","Padmavat","Paneer","Pathan","PavBhaji","Paneer","Pathan","PavBhaji","Pen","Pencil","Poha","Puri Bhaji","Ram Leela"]
    var images : [String] = ["VadaPav","Thali","ShevBhaji","Padmavat","ShevBhaji","Padmavat","Paneer","Pathan","PavBhaji","Paneer","Pathan","PavBhaji","Pen","Pencil","Poha","Puri Bhaji","Ram Leela","VadaPav","Thali","ShevBhaji","Padmavat","ShevBhaji","Padmavat","Paneer","Pathan","PavBhaji","Paneer","Pathan","PavBhaji","Pen","Pencil","Poha","Puri Bhaji","Ram Leela"]
    override func viewDidLoad() {
        super.viewDidLoad()
        myCollectionView.dataSource = self
        myCollectionView.delegate = self
    }
}
extension ViewController: UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        
        cell.myImage.image = UIImage(named: images[indexPath.row])
        cell.layer.cornerRadius = 10
        cell.layer.borderWidth = 1
        cell.layer.borderColor = UIColor.blue.cgColor
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 150, height: 200)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: 20, height: 50)
    }
}

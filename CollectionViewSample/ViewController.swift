//
//  ViewController.swift
//  CollectionViewSample
//
//  Created by naoki-mrnk on 2021/06/21.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var collectionViewFlowLayout: UICollectionViewFlowLayout!
    
    let items = ["AAA", "BBB", "CCC", "DDD", "EEE"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let taskCell = collectionView.dequeueReusableCell(withReuseIdentifier: "taskCell", for: indexPath)
        
        taskCell.backgroundColor = .systemBlue

        let label = taskCell.contentView.viewWithTag(1) as! UILabel
        label.text = items[indexPath.row]
        
        return taskCell
    }
}

extension ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        collectionViewFlowLayout.minimumLineSpacing = 20
        collectionViewFlowLayout.minimumInteritemSpacing = 20
        collectionViewFlowLayout.sectionInset = UIEdgeInsets(top: 30, left: 20, bottom: 0, right: 20)
        let verticalMargins = 60
        let width = Int(UIScreen.main.bounds.size.width) / 2 - (verticalMargins / 2)
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: width, height: width)
        
        collectionViewFlowLayout.itemSize = CGSize(width: width, height: width)
        
        let flowLayout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        flowLayout.estimatedItemSize = .zero
        
        return items.count
    }
}

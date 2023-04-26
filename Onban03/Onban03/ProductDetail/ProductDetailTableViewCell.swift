//
//  ProductDetailTableViewCell.swift
//  Onban03
//
//  Created by 에디 on 2023/04/26.
//

import UIKit

class ProductDetailTableViewCell: UITableViewCell {
  
  @IBOutlet var nameLabel: UILabel!
  
  @IBOutlet var descriptionLabel: UILabel!
  
  @IBOutlet weak var boldPriceLabel: UILabel!
  
  @IBOutlet weak var regularPriceLabel: UILabel!
  
  @IBOutlet var tagCollection: UICollectionView!
  
  private let flowLayout: UICollectionViewFlowLayout = {
    let layout = UICollectionViewFlowLayout()
    layout.minimumLineSpacing = 8.0
    layout.minimumInteritemSpacing = 4.0
    layout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
    return layout
  }()
  
  override func awakeFromNib() {
    super.awakeFromNib()
    
    tagCollection.isScrollEnabled = false
    tagCollection.collectionViewLayout = flowLayout
    tagCollection.dataSource = self
    tagCollection.delegate = self
    
    let cellNib = UINib(nibName: "LargeTagCell", bundle: nil)
    tagCollection.register(cellNib, forCellWithReuseIdentifier: "tagCell")
  }
  
}

extension ProductDetailTableViewCell: UICollectionViewDataSource {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return tempTags.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "tagCell", for: indexPath) as? LargeTagCollectionViewCell else { return UICollectionViewCell() }
    cell.configure(index: indexPath.item, name: tempTags[indexPath.item].name)
    return cell
  }
}

extension ProductDetailTableViewCell: UICollectionViewDelegateFlowLayout {
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    return CGSize(width: 60, height: 32)
  }
  
  
}


let tempTags = [
  Tag(name: "BEST"),
  Tag(name: "NEW"),
  Tag(name: "이벤트특가"),
]


// 가로 4
// 세로 8

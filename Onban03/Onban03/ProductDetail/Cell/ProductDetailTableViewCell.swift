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
  
  let tempTags = Array(repeating: Tag(name: "BEST"), count: 10)
  
  private let collectionFlowLayout: UICollectionViewFlowLayout = {
    let layout = UICollectionViewFlowLayout()
    layout.minimumLineSpacing = 8.0
    layout.minimumInteritemSpacing = 4.0
    layout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
    return layout
  }()
  
  override func awakeFromNib() {
    super.awakeFromNib()
    
    tagCollection.isScrollEnabled = false
    tagCollection.collectionViewLayout = collectionFlowLayout
    tagCollection.dataSource = self
    
    let cellNib = UINib(nibName: "LargeTagCollectionViewCell", bundle: nil)
    tagCollection.register(cellNib, forCellWithReuseIdentifier: "LargeTagCollectionViewCell")
  }
  
}

extension ProductDetailTableViewCell: UICollectionViewDataSource {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return tempTags.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    guard let cell = collectionView.dequeueReusableCell(
      withReuseIdentifier: "LargeTagCollectionViewCell",
      for: indexPath) as? LargeTagCollectionViewCell else {
      return UICollectionViewCell()
    }
    cell.configure(index: indexPath.item, name: tempTags[indexPath.item].name)
    return cell
  }
}

//
//  ImageCarouselTableViewCell.swift
//  Onban03
//
//  Created by Effie on 2023/04/27.
//

import UIKit

class ImageCarouselTableViewCell: UITableViewCell {
  @IBOutlet weak var carousel: UICollectionView!
  
  private let collectionFlowLayout: UICollectionViewFlowLayout = {
    let layout = UICollectionViewFlowLayout()
    layout.scrollDirection = .horizontal
    layout.minimumInteritemSpacing = 0
    layout.minimumLineSpacing = 0
    return layout
  }()
  
  override func awakeFromNib() {
    super.awakeFromNib()
    
    carousel.dataSource = self
    carousel.delegate = self
    
    carousel.showsHorizontalScrollIndicator = false
    carousel.collectionViewLayout = collectionFlowLayout
    
    let carouselCollectionViewCellNib = UINib(nibName: "CarouselCollectionViewCell", bundle: nil)
    carousel.register(carouselCollectionViewCellNib, forCellWithReuseIdentifier: "carouselCollectionViewCell")
  }
  
  func configure() {
    
  }
}

extension ImageCarouselTableViewCell: UICollectionViewDataSource {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 3
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    guard let cell = collectionView.dequeueReusableCell(
      withReuseIdentifier: "carouselCollectionViewCell",
      for: indexPath) as? CarouselCollectionViewCell else { return UICollectionViewCell() }
    let dummyImageName = "DummyImageDetail"
    cell.configure(with: dummyImageName)
    return cell
  }
}

extension ImageCarouselTableViewCell: UICollectionViewDelegateFlowLayout {
  func collectionView(_ collectionView: UICollectionView,
                      layout collectionViewLayout: UICollectionViewLayout,
                      sizeForItemAt indexPath: IndexPath) -> CGSize {
    let size = collectionView.frame.width
    return CGSize(width: size, height: size)
  }
}

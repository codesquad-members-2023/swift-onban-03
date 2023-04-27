//
//  CarouselCollectionViewCell.swift
//  Onban03
//
//  Created by Effie on 2023/04/27.
//

import UIKit

class CarouselCollectionViewCell: UICollectionViewCell {
  @IBOutlet weak var productImageView: UIImageView!
  
  override func awakeFromNib() {
    super.awakeFromNib()
    
    productImageView.contentMode = .scaleAspectFill
  }
  
  func configure(with imageName: String) {
    guard let image = UIImage(named: imageName) else { return }
    productImageView.image = image
  }
}

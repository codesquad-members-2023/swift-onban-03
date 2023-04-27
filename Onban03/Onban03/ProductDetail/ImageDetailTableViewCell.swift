//
//  ImageDetailTableViewCell.swift
//  Onban03
//
//  Created by Effie on 2023/04/27.
//

import UIKit

class ImageDetailTableViewCell: UITableViewCell {
  @IBOutlet weak var detailImageView: UIImageView!
  
  override func layoutSubviews() {
    super.layoutSubviews()
    detailImageView.contentMode = .scaleToFill
  }
  
  func configure(with imageName: String) {
    guard let image = UIImage(named: imageName) else { return }
    self.detailImageView.image = image
  }
}

//
//  LargeTagCollectionViewCell.swift
//  Onban03
//
//  Created by 에디 on 2023/04/26.
//

import UIKit

class LargeTagCollectionViewCell: UICollectionViewCell {
  @IBOutlet var nameLabel: UILabel!
  
  private static let colors = [ColorName.secondaryOrange.color,
                               ColorName.secondaryYellow.color,
                               ColorName.primary200.color]
  
  override func awakeFromNib() {
    super.awakeFromNib()
    nameLabel.apply(style: .boldXSmall, colorName: .white)
  }
  
  override func layoutSubviews() {
    super.layoutSubviews()
    
    layer.cornerRadius = bounds.height / 2
    layer.masksToBounds = true
  }
  
  func setBackgroundColor(_ index: Int) {
    self.backgroundColor = Self.colors[index % Self.colors.count]
  }
  
  func configure(index: Int, name: String) {
    nameLabel.text = name
    setBackgroundColor(index)
  }
}

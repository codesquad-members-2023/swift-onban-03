//
//  LargeTagCollectionViewCell.swift
//  Onban03
//
//  Created by 에디 on 2023/04/26.
//

import UIKit

class LargeTagCollectionViewCell: UICollectionViewCell {
  @IBOutlet var nameLabel: UILabel!
  
  private static let colorNames = ["SecondaryOrange", "SecondaryYellow", "Primary200"]
  
  override func layoutSubviews() {
    super.layoutSubviews()
    
    layer.cornerRadius = bounds.height / 2
    layer.masksToBounds = true
  }
  
  func setBackgroundColor(_ index: Int) {
    let colorName = Self.colorNames[index % Self.colorNames.count]
    self.backgroundColor = UIColor(named: colorName)
  }
  
  func configure(index: Int, name: String) {
    nameLabel.text = name
    nameLabel.font = UIFont.systemFont(ofSize: 8, weight: .bold, width: .standard)
    nameLabel.textColor = .white
    setBackgroundColor(index)
  }
}

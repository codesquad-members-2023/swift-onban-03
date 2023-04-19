//
//  ProductCollectionHeader.swift
//  Onban03
//
//  Created by Effie on 2023/04/19.
//

import UIKit

class ProductCollectionHeader: UICollectionReusableView {
  
  @IBOutlet weak var sectionTitle: UILabel!
  
  required init?(coder: NSCoder) {
    super.init(coder: coder)
  }
  
  override init(frame: CGRect) {
    super.init(frame: frame)
  }
  
  func configure(withTitle title: String) {
    sectionTitle.text = title
  }
}

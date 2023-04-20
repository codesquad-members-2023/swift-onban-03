//
//  ProductCollectionHeader.swift
//  Onban03
//
//  Created by Effie on 2023/04/19.
//

import UIKit

class ProductCollectionHeader: UICollectionReusableView {
  
  @IBOutlet weak var sectionTitle: UILabel!
  
  func configure(withTitle title: String) {
    sectionTitle.text = title
  }
}

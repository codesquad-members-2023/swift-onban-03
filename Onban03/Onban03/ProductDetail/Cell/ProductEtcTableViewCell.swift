//
//  ProductEtcTableViewCell.swift
//  Onban03
//
//  Created by Effie on 2023/04/27.
//

import UIKit

class ProductEtcTableViewCell: UITableViewCell {
  @IBOutlet weak var pointLabel: UILabel!
  
  @IBOutlet weak var deliveryInfoLabel: UILabel!
  
  @IBOutlet weak var deliveryChargeLabel: UILabel!
  
  override func awakeFromNib() {
    super.awakeFromNib()
    [pointLabel, deliveryInfoLabel, deliveryChargeLabel].forEach { label in
      label.apply(style: .bodySmall, colorName: .gray400)
    }
  }
  
  func configure(with info: String) {
    pointLabel.text = info
    deliveryInfoLabel.text = info
    deliveryChargeLabel.text = info
  }
}

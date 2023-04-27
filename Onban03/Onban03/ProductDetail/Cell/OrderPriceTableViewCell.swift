//
//  OrderPriceTableViewCell.swift
//  Onban03
//
//  Created by 에디 on 2023/04/27.
//

import UIKit

class OrderPriceTableViewCell: UITableViewCell {
  
  @IBOutlet var orderButton: UIButton!
  
  override func awakeFromNib() {
    super.awakeFromNib()
    configureButtonLabel()
  }
  
  func configureButtonLabel() {
    let buttonLabel = orderButton.titleLabel
    buttonLabel?.apply(style: .boldMedium, colorName: .white)
  }
}

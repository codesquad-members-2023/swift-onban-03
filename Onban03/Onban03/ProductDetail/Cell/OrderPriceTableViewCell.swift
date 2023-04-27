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
    buttonLabel?.font = UIFont.systemFont(ofSize: 17, weight: .bold, width: .standard)
    buttonLabel?.textColor = .white
  }
}

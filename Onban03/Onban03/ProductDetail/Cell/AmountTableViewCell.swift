//
//  TableViewCell.swift
//  Onban03
//
//  Created by 에디 on 2023/04/27.
//

import UIKit

class AmountTableViewCell: UITableViewCell {

  @IBOutlet var amountLabel: UILabel!
  @IBOutlet var amountStepper: UIStepper!
  
  @IBAction func stepperPressed(_ sender: Any) {
    amountLabel.text = String(Int(amountStepper.value))
  }
}

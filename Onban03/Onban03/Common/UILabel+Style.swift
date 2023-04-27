//
//  UILabel+Style.swift
//  Onban03
//
//  Created by Effie on 2023/04/27.
//

import UIKit

extension UILabel {
  func apply(style: Typography,
             colorName: ColorName) {
    self.textColor = colorName.color
    self.font = style.font
    if style == .regularPriceSmall || style == .regularPriceMedium {
      addSingleStrike()
    }
  }
  
  func addSingleStrike() {
    guard let text = self.text else { return }
    let attributedString = NSMutableAttributedString(string: text)
    attributedString.addAttribute(.strikethroughStyle,
                                 value: NSUnderlineStyle.single.rawValue,
                                 range: NSRange(location: 0, length: attributedString.length))
    self.attributedText = attributedString
  }
}

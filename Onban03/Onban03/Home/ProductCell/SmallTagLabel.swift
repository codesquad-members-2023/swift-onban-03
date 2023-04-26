//
//  TagView.swift
//  Onban03
//
//  Created by Effie on 2023/04/19.
//

import UIKit

class SmallTagLabel: UILabel {
  private static let padding = UIEdgeInsets(top: 2.0, left: 12.0, bottom: 2.0, right: 12.0)
  
  private static let colorNames = ["SecondaryOrange", "SecondaryYellow", "Primary200"]
  
  override var intrinsicContentSize: CGSize {
    var contentSize = super.intrinsicContentSize
    contentSize.width += Self.padding.left + Self.padding.right
    contentSize.height += Self.padding.top + Self.padding.bottom
    return contentSize
  }
  
  convenience init(index: Int, name: String) {
    self.init() 
    configure(index: index, name: name)
  }
  
  func configure(index: Int, name: String) {
    text = name
    font = UIFont.systemFont(ofSize: 8, weight: .bold, width: .standard)
    textColor = .white
    setBackgroundColor(index)
  }
  
  override func drawText(in rect: CGRect) {
    super.drawText(in: rect.inset(by: Self.padding))
  }
  
  override func layoutSubviews() {
    super.layoutSubviews()
    
    layer.cornerRadius = bounds.height / 2
    layer.masksToBounds = true
  }
  
  func setBackgroundColor(_ index: Int) {
    let colorName = Self.colorNames[index % Self.colorNames.count]
    self.backgroundColor = UIColor(named: colorName)
  }
}

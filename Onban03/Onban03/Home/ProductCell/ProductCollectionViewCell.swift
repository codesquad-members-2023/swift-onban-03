//
//  ProductCollectionViewCell.swift
//  Onban03
//
//  Created by Effie on 2023/04/17.
//

import UIKit

class ProductCollectionViewCell: UICollectionViewCell {
  @IBOutlet weak var thumbnailImageView: UIImageView!
  
  @IBOutlet weak var nameLabel: UILabel!
  
  @IBOutlet weak var briefDescriptionLabel: UILabel!
  
  @IBOutlet weak var boldPriceLabel: UILabel!
  
  @IBOutlet weak var regularPriceLabel: UILabel!
  
  @IBOutlet weak var tagStackView: UIStackView!
  
  override func awakeFromNib() {
    guard let text = regularPriceLabel.text else { return }
    let attributedString = NSMutableAttributedString(string: text)
    attributedString.addAttribute(.strikethroughStyle,
                                  value: NSUnderlineStyle.single.rawValue,
                                  range: NSRange(location: 0, length: attributedString.length))
    regularPriceLabel.attributedText = attributedString
    thumbnailImageView.layer.cornerRadius = 5
    thumbnailImageView.layer.masksToBounds = true
  }
  
  override func prepareForReuse() {
    super.prepareForReuse()
    tagStackView.arrangedSubviews.forEach { view in view.removeFromSuperview() }
  }
  
  func configure(product: Product) {
    nameLabel.text = product.name
    briefDescriptionLabel.text = product.briefDescription
    
    if let discountedPrice = product.discountedPrice {
      boldPriceLabel.text = "\(discountedPrice.wonFormat())원"
      regularPriceLabel.text = "\(product.tagPrice.wonFormat())원"
    } else {
      boldPriceLabel.text = "\(product.tagPrice.wonFormat())원"
      regularPriceLabel.text = ""
    }
    addTags(product.tags)
  }
  
  func addTags(_ tags: [Tag]) {
    guard tags.isEmpty == false else {
      tagStackView.superview?.isHidden = true
      return
    }
    
    for (index, tag) in tags.enumerated() {
      let tagLabel = SmallTagLabel(index: index, name: tag.name)
      tagStackView.addArrangedSubview(tagLabel)
    }
  }
}

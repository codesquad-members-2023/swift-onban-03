//
//  Product.swift
//  Onban03
//
//  Created by Effie on 2023/04/20.
//

import Foundation

struct Product {
  var category: ProductCategory
  
  var thumbnailImageUrl: URL?
  
  var name: String
  
  var briefDescription: String
  
  var tagPrice: Int
  
  var discountedPrice: Int?
  
  var tags: [Tag]
}

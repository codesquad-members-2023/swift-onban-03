//
//  DataMock.swift
//  Onban03
//
//  Created by Effie on 2023/04/21.
//

import Foundation

struct DataMock {
  var products: [CategoryProducts]
  
  init() {
    let mainOne = Product(
      category: .main,
      thumbnailImageUrl: URL(string: ""),
      name: "오리 주물럭_반조리",
      briefDescription: "감질맛 나는 매콤한 양념",
      tagPrice: 15_800,
      discountedPrice: 12_640,
      tags: [
        Tag(name: "BEST"),
        Tag(name: "NEW"),
        Tag(name: "이벤트특가"),
      ]
    )
    
    let soupOne = Product(
      category: .soup,
      thumbnailImageUrl: URL(string: ""),
      name: "미역오이냉국",
      briefDescription: "여름엔 시원한 냉국이 최고",
      tagPrice: 7_800,
      discountedPrice: nil,
      tags: [
        Tag(name: "BEST"),
        Tag(name: "이벤트특가"),
      ]
    )
    
    let sideOne = Product(
      category: .side,
      thumbnailImageUrl: URL(string: ""),
      name: "호두 멸치볶음",
      briefDescription: "잔멸치와 호두가 만나 짭쪼름하고 달콤한 국민 반찬",
      tagPrice: 5_800,
      discountedPrice: 5_220,
      tags: [
        Tag(name: "BEST"),
        Tag(name: "NEW"),
        Tag(name: "이벤트특가"),
      ]
    )
    
    self.products = [
      CategoryProducts(category: .main, products: Array(repeating: mainOne, count: 5)),
      CategoryProducts(category: .soup, products: Array(repeating: soupOne, count: 8)),
      CategoryProducts(category: .side, products: Array(repeating: sideOne, count: 10)),
    ]
  }
}


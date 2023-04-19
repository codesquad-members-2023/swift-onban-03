//
//  ProductCategory.swift
//  Onban03
//
//  Created by Effie on 2023/04/19.
//

import Foundation

enum ProductCategory {
  case main
  case soup
  case side
  
  var sectionTitle: String {
    switch self {
    case .main: return "온 가족이 좋아하는\n든든한 메인 요리"
    case .soup: return "정성과 건강이\n가득 담긴 국물 요리"
    case .side: return "식탁을 풍성하게 하는\n정갈한 밑반찬"
    }
  }
}

//
//  Typography.swift
//  Onban03
//
//  Created by Effie on 2023/04/27.
//

import UIKit

enum Typography {
  case boldXSmall
  case boldSmall
  case boldMedium
  case boldLarge
  case caption
  case bodySmall
  case bodyMedium
  case regularPriceSmall
  case regularPriceMedium
  
  var font: UIFont {
    switch self {
    case .boldXSmall:
      return UIFont.systemFont(ofSize: 11, weight: .bold, width: .standard)
    case .boldSmall:
      return UIFont.systemFont(ofSize: 13, weight: .bold, width: .standard)
    case .boldMedium:
      return UIFont.systemFont(ofSize: 17, weight: .bold, width: .standard)
    case .boldLarge:
      return UIFont.systemFont(ofSize: 32, weight: .bold, width: .standard)
    case .caption:
      return UIFont.systemFont(ofSize: 8, weight: .bold, width: .standard)
    case .bodySmall:
      return UIFont.systemFont(ofSize: 13, weight: .regular, width: .standard)
    case .bodyMedium:
      return UIFont.systemFont(ofSize: 17, weight: .regular, width: .standard)
    case .regularPriceSmall:
      return UIFont.systemFont(ofSize: 13, weight: .regular, width: .standard)
    case .regularPriceMedium:
      return UIFont.systemFont(ofSize: 17, weight: .regular, width: .standard)
    }
  }
}

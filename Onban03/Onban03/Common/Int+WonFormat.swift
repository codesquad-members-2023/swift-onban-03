//
//  Int+WonFormat.swift
//  Onban03
//
//  Created by Effie on 2023/04/21.
//

import Foundation

extension Int {
  func wonFormat() -> String {
    let formatter = NumberFormatter()
    formatter.numberStyle = .currency
    formatter.locale = Locale(identifier: "ko_KR")
    formatter.currencySymbol = ""
    return formatter.string(from: NSNumber(value: self)) ?? ""
  }
}

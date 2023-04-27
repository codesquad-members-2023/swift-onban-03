//
//  ColorName.swift
//  Onban03
//
//  Created by Effie on 2023/04/27.
//

import UIKit

enum ColorName: String {
  case white
  case gray100
  case gray200
  case gray300
  case gray400
  case black
  case black40
  case primary100
  case primary200
  case primary300
  case secondaryOrange
  case secondaryYellow
  
  var color: UIColor {
    UIColor(named: self.rawValue) ?? .black
  }
}

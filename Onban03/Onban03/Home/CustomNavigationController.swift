//
//  CustomNavigationController.swift
//  Onban03
//
//  Created by Effie on 2023/04/26.
//

import UIKit

class CustomNavigationController: UINavigationController {
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    configureBarAppearance()
  }
  
  override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
    super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    configureBarAppearance()
  }
  
  override init(rootViewController: UIViewController) {
    super.init(rootViewController: rootViewController)
    configureBarAppearance()
  }
  
  override init(navigationBarClass: AnyClass?, toolbarClass: AnyClass?) {
    super.init(navigationBarClass: navigationBarClass, toolbarClass: toolbarClass)
    configureBarAppearance()
  }
  
  func configureBarAppearance() {
    let barAppearance = UINavigationBarAppearance()
    barAppearance.backgroundColor = .white
    barAppearance.shadowColor = ColorName.gray200.color
    navigationBar.scrollEdgeAppearance = barAppearance
    navigationBar.standardAppearance = barAppearance
  }
}

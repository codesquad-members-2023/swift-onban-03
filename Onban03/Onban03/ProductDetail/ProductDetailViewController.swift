//
//  ProductDetailViewController.swift
//  Onban03
//
//  Created by Effie on 2023/04/26.
//

import UIKit

class ProductDetailViewController: UIViewController {
  
  @IBOutlet weak var tableView: UITableView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.dataSource = self
    
    let productDetailCellNib = UINib(nibName: "ProductDetailCell", bundle: nil)
    tableView.register(productDetailCellNib, forCellReuseIdentifier: "productDetailCell")
    
    let productEtcCellNib = UINib(nibName: "ProductEtcTableViewCell", bundle: nil)
    tableView.register(productEtcCellNib, forCellReuseIdentifier: "productEtcTableViewCell")
    
    let imageDetailCellNib = UINib(nibName: "ImageDetailTableViewCell", bundle: nil)
    tableView.register(imageDetailCellNib, forCellReuseIdentifier: "imageDetailTableViewCell")
    
    let amountDetailCellNib = UINib(nibName: "AmountTableViewCell", bundle: nil)
    tableView.register(amountDetailCellNib, forCellReuseIdentifier: "amountTableViewCell")
    
    let orderPriceDetailCellNib = UINib(nibName: "OrderPriceTableViewCell", bundle: nil)
    tableView.register(orderPriceDetailCellNib, forCellReuseIdentifier: "orderPriceTableViewCell")
    
    let imageCarouselTableViewCellNib = UINib(nibName: "ImageCarouselTableViewCell", bundle: nil)
    tableView.register(imageCarouselTableViewCellNib, forCellReuseIdentifier: "imageCarouselTableViewCell")
  }
}

extension ProductDetailViewController: UITableViewDataSource {
  func numberOfSections(in tableView: UITableView) -> Int {
    return 6
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    switch section {
    case 0...4: return 1
    case 5: return 3
    default: return 0
    }
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    switch indexPath.section {
    case 0:
      guard let cell = tableView.dequeueReusableCell(
        withIdentifier: "imageCarouselTableViewCell",
        for: indexPath) as? ImageCarouselTableViewCell else { return UITableViewCell() }
      return cell
    case 1:
      guard let cell = tableView.dequeueReusableCell(
        withIdentifier: "productDetailCell",
        for: indexPath) as? ProductDetailTableViewCell else { return UITableViewCell() }
      return cell
    case 2:
      guard let cell = tableView.dequeueReusableCell(
        withIdentifier: "productEtcTableViewCell",
        for: indexPath) as? ProductEtcTableViewCell else { return UITableViewCell() }
      cell.configure(with: "dummy text")
      return cell
    case 3:
      guard let cell = tableView.dequeueReusableCell(
        withIdentifier: "amountTableViewCell",
        for: indexPath) as? AmountTableViewCell else { return UITableViewCell() }
      return cell
    case 4:
      guard let cell = tableView.dequeueReusableCell(
        withIdentifier: "orderPriceTableViewCell",
        for: indexPath) as? OrderPriceTableViewCell else { return UITableViewCell() }
      return cell
    case 5:
      guard let cell = tableView.dequeueReusableCell(
        withIdentifier: "imageDetailTableViewCell",
        for: indexPath) as? ImageDetailTableViewCell else { return UITableViewCell() }
      let dummyImageName = "DummyImageDetail"
      cell.configure(with: dummyImageName)
      return cell
    default:
      return UITableViewCell()
    }
  }
}

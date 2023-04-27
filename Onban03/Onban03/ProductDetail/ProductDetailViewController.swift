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
    
    let imageCarouselTableViewCellNib = UINib(nibName: "ImageCarouselTableViewCell", bundle: nil)
    tableView.register(imageCarouselTableViewCellNib, forCellReuseIdentifier: "ImageCarouselTableViewCell")
    
    let productDetailCellNib = UINib(nibName: "ProductDetailTableViewCell", bundle: nil)
    tableView.register(productDetailCellNib, forCellReuseIdentifier: "ProductDetailTableViewCell")
    
    let productEtcCellNib = UINib(nibName: "ProductEtcTableViewCell", bundle: nil)
    tableView.register(productEtcCellNib, forCellReuseIdentifier: "ProductEtcTableViewCell")
    
    let amountDetailCellNib = UINib(nibName: "AmountTableViewCell", bundle: nil)
    tableView.register(amountDetailCellNib, forCellReuseIdentifier: "AmountTableViewCell")
    
    let orderPriceDetailCellNib = UINib(nibName: "OrderPriceTableViewCell", bundle: nil)
    tableView.register(orderPriceDetailCellNib, forCellReuseIdentifier: "OrderPriceTableViewCell")
    
    let imageDetailCellNib = UINib(nibName: "ImageDetailTableViewCell", bundle: nil)
    tableView.register(imageDetailCellNib, forCellReuseIdentifier: "ImageDetailTableViewCell")
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
        withIdentifier: "ImageCarouselTableViewCell",
        for: indexPath) as? ImageCarouselTableViewCell else { return UITableViewCell() }
      return cell
    case 1:
      guard let cell = tableView.dequeueReusableCell(
        withIdentifier: "ProductDetailTableViewCell",
        for: indexPath) as? ProductDetailTableViewCell else { return UITableViewCell() }
      return cell
    case 2:
      guard let cell = tableView.dequeueReusableCell(
        withIdentifier: "ProductEtcTableViewCell",
        for: indexPath) as? ProductEtcTableViewCell else { return UITableViewCell() }
      cell.configure(with: "dummy text")
      return cell
    case 3:
      guard let cell = tableView.dequeueReusableCell(
        withIdentifier: "AmountTableViewCell",
        for: indexPath) as? AmountTableViewCell else { return UITableViewCell() }
      return cell
    case 4:
      guard let cell = tableView.dequeueReusableCell(
        withIdentifier: "OrderPriceTableViewCell",
        for: indexPath) as? OrderPriceTableViewCell else { return UITableViewCell() }
      return cell
    case 5:
      guard let cell = tableView.dequeueReusableCell(
        withIdentifier: "ImageDetailTableViewCell",
        for: indexPath) as? ImageDetailTableViewCell else { return UITableViewCell() }
      let dummyImageName = "DummyImageDetail"
      cell.configure(with: dummyImageName)
      return cell
    default:
      return UITableViewCell()
    }
  }
}

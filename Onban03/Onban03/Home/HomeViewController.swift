//
//  HomeViewController.swift
//  Onban03
//
//  Created by Effie on 2023/04/17.
//

import UIKit

class HomeViewController: UIViewController {
  @IBOutlet weak var collectionView: UICollectionView!

  var products: [CategoryProducts] = []
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.navigationItem.title = "오늘찬"
    
    collectionView.dataSource = self
    collectionView.delegate = self
    
    let productCellNib = UINib(nibName: "ProductCell", bundle: nil)
    collectionView.register(productCellNib, forCellWithReuseIdentifier: "productCell")
    
    let headerNib = UINib(nibName: "ProductCollectionViewHeader", bundle: nil)
    collectionView.register(headerNib,
                            forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
                            withReuseIdentifier: "categoryView")
    
    if let flowLayout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
      flowLayout.estimatedItemSize = .zero
    }
    
    let mock = DataMock()
    self.products = mock.products
  }
}

extension HomeViewController: UICollectionViewDataSource {
  func numberOfSections(in collectionView: UICollectionView) -> Int {
    return products.count
  }
  
  func collectionView(_ collectionView: UICollectionView,
                      numberOfItemsInSection section: Int) -> Int {
    return products[section].products.count
  }
  
  func collectionView(_ collectionView: UICollectionView,
                      cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "productCell",
                                                        for: indexPath) as? ProductCollectionViewCell else {
      return UICollectionViewCell()
    }
    cell.configure(product: products[indexPath.section].products[indexPath.item])
    return cell
  }
  
  func collectionView(_ collectionView: UICollectionView,
                      viewForSupplementaryElementOfKind kind: String,
                      at indexPath: IndexPath) -> UICollectionReusableView {
    switch kind {
    case UICollectionView.elementKindSectionHeader:
      guard let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind,
                                                                         withReuseIdentifier: "categoryView",
                                                                         for: indexPath) as? ProductCollectionHeader else {
        return UICollectionReusableView()
      }
      header.configure(category: products[indexPath.section].category)
      return header
    default:
      assert(false)
    }
  }
  
  func collectionView(_ collectionView: UICollectionView,
                      layout collectionViewLayout: UICollectionViewLayout,
                      referenceSizeForHeaderInSection section: Int) -> CGSize {
    return CGSize(width: collectionView.frame.width, height: 144)
  }
}

extension HomeViewController: UICollectionViewDelegateFlowLayout {
  func collectionView(_ collectionView: UICollectionView,
                      layout collectionViewLayout: UICollectionViewLayout,
                      sizeForItemAt indexPath: IndexPath) -> CGSize {
    return CGSize(width: collectionView.frame.width - (16 * 2),
                  height: 130)
  }
}

extension HomeViewController: UICollectionViewDelegate {
  func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    let storyboard = UIStoryboard(name: "ProductDetail", bundle: nil)
    guard let productDetailVC = storyboard.instantiateInitialViewController() as? ProductDetailViewController else { return }
    self.navigationController?.pushViewController(productDetailVC, animated: true)
  }
}

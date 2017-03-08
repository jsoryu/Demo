//
//  AccountCollectionViewFlowLayout.swift
//  InterfaceDemo
//
//  Created by Jonathan Soryu on 2017-03-08.
//  Copyright © 2017 Jonathan Soryu. All rights reserved.
//

import UIKit

@IBDesignable
class AccountCollectionViewFlowLayout: UICollectionViewFlowLayout {

    @IBInspectable var cellWidth: CGFloat = 50.0 {
        didSet {
            
            if cellWidth == 0 {
                cellWidth = collectionView!.frame.width
            }
            self.itemSize.width = cellWidth
        }
    }
    
    @IBInspectable var cellHeight: CGFloat = 50.0 {
        didSet {
            
            if cellHeight == 0 {
                cellHeight = collectionView!.frame.height
            }
            self.itemSize.height = cellHeight
        }
    }
    
    // Use following code if implementing in UICollectionView
//    @IBInspectable var cellWidth: CGFloat = 50.0 {
//        didSet {
//            
//            if cellWidth == 0 {
//                cellWidth = self.frame.width
//            }
//            
//            if let flowLayout = self.collectionViewLayout as? UICollectionViewFlowLayout {
//                flowLayout.itemSize.width = cellWidth
//            }
//        }
//    }
//    
//    @IBInspectable var cellHeight: CGFloat = 50.0 {
//        didSet {
//            
//            if cellHeight == 0 {
//                cellHeight = self.frame.height
//            }
//            if let flowLayout = self.collectionViewLayout as? UICollectionViewFlowLayout {
//                flowLayout.itemSize.height = cellHeight
//            }
//        }
//    }

}

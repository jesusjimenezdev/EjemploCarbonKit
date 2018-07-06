//
//  ViewController.swift
//  CarbonTabs
//
//  Created by Jorge M. B. on 02/07/18.
//  Copyright © 2018 Jorge M. B. All rights reserved.
//

import UIKit
import CarbonKit
class ViewController: UIViewController, CarbonTabSwipeNavigationDelegate {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tabSwipe = CarbonTabSwipeNavigation(items: [UIImage(named: "home")!, "PRODUCTOS", "GALERIA"], delegate: self)
        tabSwipe.insert(intoRootViewController: self)
        let color = UIColor(red: 24.0 / 255, green: 75.0 / 255, blue: 152.0 / 255, alpha: 1)
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationController?.navigationBar.tintColor = UIColor.white
        self.navigationController?.navigationBar.barTintColor = color
        self.navigationController?.navigationBar.barStyle = .blackTranslucent
        tabSwipe.setTabExtraWidth(40)
        tabSwipe.setIndicatorColor(UIColor.green)
        tabSwipe.setNormalColor(UIColor.white)
        tabSwipe.setSelectedColor(UIColor.green)
        tabSwipe.toolbar.barTintColor = UIColor.darkGray
       
    }
    
    func carbonTabSwipeNavigation(_ carbonTabSwipeNavigation: CarbonTabSwipeNavigation, viewControllerAt index: UInt) -> UIViewController {
        switch index {
        case 0:
            return self.storyboard?.instantiateViewController(withIdentifier: "PrimerViewController") as! PrimerViewController
        case 1:
            return self.storyboard?.instantiateViewController(withIdentifier: "SegundoViewController") as! SegundoViewController
        default:
            return self.storyboard?.instantiateViewController(withIdentifier: "TercerViewController") as! TercerViewController
        }
    }
    
    func carbonTabSwipeNavigation(_ carbonTabSwipeNavigation: CarbonTabSwipeNavigation, willMoveAt index: UInt) {
        switch index {
        case 0:
            self.title = "INICIO"
        case 1:
            self.title = "PRODUCTOS"
        default:
            self.title = "GALERIA"
        }
    }




}


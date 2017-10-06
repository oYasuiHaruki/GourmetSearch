//
//  ShopMapDetailViewController.swift
//  GourmetSearch
//
//  Created by 安井春輝 on 2017/10/06.
//  Copyright © 2017 haruki yasui. All rights reserved.
//

import UIKit
import MapKit

class ShopMapDetailViewController: UIViewController {

    
    @IBOutlet weak var map: MKMapView!
    
    @IBOutlet weak var showHereButton: UIBarButtonItem!
  
    var shop: Shop = Shop()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //店舗所在地を地図に反映
        if let lat = shop.lat {
            if let lon = shop.lon {
                //地図の表示範囲を指定
                let cllc = CLLocationCoordinate2D(latitude: lat, longitude: lon)
                let mkcr = MKCoordinateRegionMakeWithDistance(cllc, 500, 500)
                map.setRegion(mkcr, animated: false)
                //ピンを設定
                let pin = MKPointAnnotation()
                pin.coordinate = cllc
                pin.title = shop.name
                map.addAnnotation(pin)
            }
        }
        self.navigationItem.title = shop.name
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARL: - IBAction
    
    @IBAction func showHereButtonTapped(_ sender: UIBarButtonItem) {
    }
    
    
    
    
    
    
    
}

//
//  DeliverMapViewController.swift
//  DeliveryApp
//
//  Created by Daniil Slaykovski on 01.04.2018.
//  Copyright © 2018 Daniil Slaykovski. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class DeliverMapViewController: UIViewController, CLLocationManagerDelegate {
    
    @IBOutlet weak var MapView: MKMapView!
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        let locations = locations[0]
        let center = locations.coordinate
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        let region = MKCoordinateRegion(center: center, span: span)
        
        MapView.setRegion(region, animated: true)
        MapView.showsUserLocation = true
        
        
    }
    
}

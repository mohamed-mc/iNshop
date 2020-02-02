//
//  InitialViewController.swift
//  inSHOP
//
//  Created by Jai Gautam on 01/02/2020.
//  Copyright © 2020 Jai Gautam. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class InitialViewController: UIViewController, UISearchBarDelegate, CLLocationManagerDelegate{

    let locationManager = CLLocationManager() // create Location Manager object
    var latitude : Double?
    var longitude : Double?
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("in Main")
        // Do any additional setup after loading the view.
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        self.view.endEditing(true) //Since search button is present in keyboard, keyboard will need to be dismissed in order to view search results
        let results = searchBar.text ?? ""
        print(results)
    }


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("segueing")
        self.locationManager.requestAlwaysAuthorization()
        self.locationManager.requestWhenInUseAuthorization()

        if CLLocationManager.locationServicesEnabled() {
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            locationManager.startUpdatingLocation()
        }

    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location: CLLocationCoordinate2D = manager.location?.coordinate else { return }
        // set the value of lat and long
        print(location.latitude)
        print(location.longitude)
        Location.shared.lat = location.latitude
        Location.shared.lng = location.longitude

    }
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
        
}




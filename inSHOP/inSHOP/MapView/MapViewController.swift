//
//  MapViewController.swift
//  inSHOP
//
//  Created by Jai Gautam on 01/02/2020.
//  Copyright © 2020 Jai Gautam. All rights reserved.
//
import WebKit
import UIKit

class MapViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        print("inweb")
        print(Location.shared.lat)
        print(Location.shared.lng)
//        if let url = URL(string: ("/proto.html/?lat=" + String (Location.shared.lat) + "&lng=" + String(Location.shared.lng))) {

        if let url = URL(string: "https://i-am-rich.000webhostapp.com/proto.html") {
            let request = URLRequest(url: url)
            webView.load(request)
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

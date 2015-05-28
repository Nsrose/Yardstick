//
//  ViewController.swift
//  yardstick
//
//  Created by Nick Rose on 5/27/15.
//  Copyright (c) 2015 acmetools. All rights reserved.
//

import UIKit


class ViewController: UIViewController, CLLocationManagerDelegate {
//    var manager:CLLocationManager!
//    let locationManager = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        locationManager = CLLocationManager()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestAlwaysAuthorization()
        locationManager.startUpdatingLocation()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func setStartLocation(sender: AnyObject) {
        var D:Distance = Distance()
        
    }

}


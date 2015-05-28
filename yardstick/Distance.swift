//
//  Distance.swift
//  yardstick
//
//  Created by Nick Rose on 5/27/15.
//  Copyright (c) 2015 acmetools. All rights reserved.
//

import Foundation

class Distance {
    var x1:Double = 0;
    var y1:Double = 0;
    
    var x2:Double = 0;
    var y2:Double = 0;
    
    init () {

    }
    
    
    func setStartPosition(inX1:Double, inY1:Double) {
        self.x1 = inX1;
        self.y1 = inY1;
    }
    
    func setEndPosition(inX2:Double, inY2:Double) {
        self.x2 = inX2
        self.y2 = inY2
    }
    
    /** Returns the distance in m. */
    func distanceMeters()->Double {
        return distanceKilometers() * 1000
    }
    
    /** Returns the distance in feet.*/
    func distanceFeet()->Double {
        return distanceMeters() * 3.28084
    }
    
    /** Returns the distance between the two coordinates in km.*/
    private func distanceKilometers()->Double {
        var R:Double = 6371; // Radius of the earth in km
        var dLat = dToRad(x2  - x1)
        var dLon = dToRad(y2-y1)
        var a = sin(dLat/2) * sin(dLat/2) +
            cos(dToRad(x1)) * cos(dToRad(x2)) *
            sin(dLon/2) * sin(dLon/2);
        var c = 2 * atan2(sqrt(a), sqrt(1-a));
        var d = R * c;
        return d;
    }
    
    /** Returns the radian representation of a degree angle.*/
    private func dToRad(value:Double)->Double {
        var d = value * M_PI / 180
        return d
    }
    
    
}
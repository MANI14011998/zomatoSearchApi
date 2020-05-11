//
//  Restaurant.swift
//  xyz
//
//  Created by MANINDER SINGH on 11/05/20.
//  Copyright © 2020 MANINDER SINGH. All rights reserved.
//

import Foundation
class Restaurant {
    var imageURL :String?
    var restaurantName : String?
    var restaurantLocation : String?
    var rating : String?
    var city : String?
    
    init(imageURL : String, restaurantName : String, restaurantLocation : String, rating : String, city : String){
        self.imageURL = imageURL
        self.restaurantName = restaurantName
        self.city = city
        self.rating = rating
        self.restaurantLocation = restaurantLocation
    }
}

//
//  ZomatoAPI.swift
//  xyz
//
//  Created by MANINDER SINGH on 08/05/20.
//  Copyright © 2020 MANINDER SINGH. All rights reserved.
//

import Foundation
struct restaurantSearch : Codable{
    let restaurants: [RestaurantElement]?
}

// MARK: - RestaurantElement
struct RestaurantElement : Codable{
    let restaurant: RestaurantRestaurant?
}
// MARK: - RestaurantRestaurant
struct RestaurantRestaurant : Codable{
    let name: String?
    let location: Location?
    let userRating: UserRating?
    let photos: [PhotoElement]?
}

//// MARK: - Location
struct Location : Codable {
    let locality, city: String
}
//// MARK: - PhotoElement
struct PhotoElement : Codable {
    let photo: PhotoPhoto
}
//// MARK: - PhotoPhoto
struct PhotoPhoto : Codable {
    let url: String
   
}

//// MARK: - UserRating
struct UserRating: Codable {
    let aggregateRating: Double
    let ratingText: String
}




//class ZomatoAPI{
//    static let api = "e4c676127ffc0ecaddf4f6b4b5d46e3c"
//    enum EndPoint{
//        case zomatoSearchApi
//
//        var url:URL{
//            return URL(string: self.stringValue)!}
//
//        var stringValue:String{
//            switch self {
//            case .zomatoSearchApi:
//                return "https://developers.zomato.com/api/v2.1/search?count=20"
//
//            }
//        }
//        var request:URLRequest{
//            return URLRequest(url: self.url)
//        }
//    }
//
//}

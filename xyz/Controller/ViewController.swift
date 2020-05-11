//
//  ViewController.swift
//  xyz
//
//  Created by MANINDER SINGH on 06/05/20.
//  Copyright © 2020 MANINDER SINGH. All rights reserved.
//

import UIKit
import PINRemoteImage

class ViewController: UIViewController{
    var allData = [restaurantSearch]()
     var dataArray = [Restaurant]()
    
    @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //tableView.register(TableViewCell.self, forCellReuseIdentifier: "cell")
        let url = "https://developers.zomato.com/api/v2.1/search?count=30"
        let api = "e4c676127ffc0ecaddf4f6b4b5d46e3c"
        let zomatoURL = URL(string: url)
        var request = URLRequest(url: zomatoURL!)
        request.addValue("application/json", forHTTPHeaderField:"Accept")
        request.addValue(api, forHTTPHeaderField: "user-key")
        request.httpMethod = "GET"
        let task = URLSession.shared.dataTask(with: request) { (data, Response, Error) in
            guard let data = data else{
                print("no")
                return
            }
            let decode=JSONDecoder()
            let json = try! decode.decode(restaurantSearch.self, from: data)
            print(json)
            for i in json.restaurants!{
                DispatchQueue.main.async {
                    self.dataArray.append(Restaurant(imageURL: i.restaurant!.photos![0].photo.url, restaurantName: i.restaurant!.name!, restaurantLocation: i.restaurant!.location!.locality, rating: i.restaurant!.userRating?.ratingText ?? "No rating", city: i.restaurant!.location!.city))
                    print(self.dataArray)
                    self.tableView.reloadData()
                }
                
            }
            
        }
        
        task.resume()
        

    }


}
extension ViewController: UITableViewDelegate,UITableViewDataSource{

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        print(cell)
        cell.restaurantImage.pin_setImage(from: URL(string: dataArray[indexPath.row].imageURL ?? " "))
        cell.cityLbl.text = dataArray[indexPath.row].city
        cell.locationLbl.text = dataArray[indexPath.row].restaurantLocation
        cell.ratingLbl.text = dataArray[indexPath.row].rating
        cell.restaurantLbl.text = dataArray[indexPath.row].restaurantName
        return cell
    }
    


}


//
//  ViewController.swift
//  Network
//
//  Created by Hailey on 2022/9/4.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var idUILabel: UILabel!
    @IBOutlet weak var nameUILabel: UILabel!
    @IBOutlet weak var addressUILabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchData()
        // Do any additional setup after loading the view.
    
        
    }
    
    func fetchData() {
        guard let url = URL(string: "https://stations-98a59.firebaseio.com/practice.json") else {
            return
        }
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let httpResponse = response as? HTTPURLResponse,
                  (200..<300).contains(httpResponse.statusCode),
                  let data = data else {
                fatalError()
            }
            let decoder = JSONDecoder()
            guard let response = try? decoder.decode(Station.self, from: data) else {
                return
            }
                DispatchQueue.main.async {
                    self.idUILabel.text = response.stationID
                    self.nameUILabel.text = response.stationName
                    self.addressUILabel.text = response.stationAddress
                }
        }.resume()
    }

}


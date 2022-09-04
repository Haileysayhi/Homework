//
//  ViewController.swift
//  TableView-HomeWork
//
//  Created by Hailey on 2022/9/2.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var UITableView: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell") else {
            fatalError()
        }
        cell.textLabel?.text = "This is section \(indexPath.section), row \(indexPath.row)"
        return cell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UITableView.delegate = self
        UITableView.dataSource = self
        UITableView.rowHeight = 100
        
    }


}



//
//  ViewController.swift
//  Simple App
//
//  Created by Hailey on 2022/8/20.
//

import UIKit


var word : [String] = ["Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tempus.",
                       "Contrary to popular belief, Lorem Ipsum is not simply random text.",
                       "Richard McClintock, a Latin professor at Hampden-Sydney College in ",
                       "looked up one of the more obscure Latin words, consectetur",
                       "from a Lorem Ipsum passage, and going through the cities of the word",
                       "This book is a treatise on the theory of ethics, very popular during the.",
                       "The first line of Lorem Ipsum, Lorem ipsum dolor sit amet..",]

var colors: [UIColor] = [.red, .gray, .green, .yellow, .blue, .brown, .orange]


class ViewController: UIViewController {
    
    
    @IBOutlet weak var middleLabel: UILabel!
    
    @IBAction func showAnotherFunFaceButton(_ sender: Any) {
        middleLabel.text = word.randomElement()
        view.backgroundColor = colors.randomElement()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let string = word.randomElement()!
        self.middleLabel.text = string
        self.view.addSubview(middleLabel)

    }

}







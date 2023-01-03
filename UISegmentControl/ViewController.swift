//
//  ViewController.swift
//  UISegmentControl
//
//  Created by Александр Карпов on 03.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var segmentControl = UISegmentedControl()
    var imageView = UIImageView()
    
    var menuArray = ["one", "two", "three"]
    let imageArray = [UIImage(named: "shoe1.jpg"),
                      UIImage(named: "shoe2.jpg"),
                      UIImage(named: "shoe3.jpg")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //image
        imageView.frame = CGRect(x: 0, y: 0, width: 300, height: 300)
        imageView.center = view.center
        imageView.image = imageArray[0]
        view.addSubview(imageView)
        
        // create segmentcontrol
        segmentControl = UISegmentedControl(items: menuArray)
        segmentControl.selectedSegmentIndex = 0
        segmentControl.frame = CGRect(x: 50, y: 700, width: 300, height: 30)
        view.addSubview(segmentControl)
        
        imageView.image = imageArray[segmentControl.selectedSegmentIndex]
        
        segmentControl.addTarget(self, action: #selector(selectedValue), for: .valueChanged)
    }
    
    
    @objc func selectedValue(target: UISegmentedControl) {
        if target == segmentControl {
            imageView.image = imageArray[target.selectedSegmentIndex]
        }
    }
    
}


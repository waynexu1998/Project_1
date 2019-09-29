//
//  ViewController.swift
//  Project_1
//
//  Created by Jiangyong Xu on 9/24/19.
//  Copyright © 2019 Jiangyong Xu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var swipe: UISwipeGestureRecognizer!
    @IBOutlet var backgroundView: UIView!
    @IBOutlet weak var profileImage: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
       // backgroundView.backgroundColor = UIColor(red:1.00, green:0.66, blue:0.66, alpha:1.0)
        // Do any additional setup after loading the view.
        profileImage.layer.cornerRadius = profileImage.frame.size.width/2
        profileImage.clipsToBounds = true
    }


}


//
//  ViewController.swift
//  theWalkingScrollView
//
//  Created by Ramiro Martinez Chavez on 12/10/15.
//  Copyright © 2015 Ramiro Martinez Chavez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    let WIDTH: CGFloat = 237
    let HEIGHT: CGFloat = 415
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for var x = 1; x <= 5; x++ {
            let img = UIImage(named: "\(x)")
            let imgView = UIImageView(image: img)
            
            scrollView.addSubview(imgView)
            
            imgView.frame = CGRectMake(-WIDTH + (WIDTH * CGFloat(x)), 320, WIDTH, HEIGHT)
        }
        scrollView.contentSize = CGSizeMake(WIDTH * 5, scrollView.frame.size.height)
        
    }

    

}


//
//  FirstViewController.swift
//  plateforme
//
//  Created by BENTALEB ALI on 18/12/2018.
//  Copyright © 2018 BENTALEB ALI. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var Logo: UIImageView!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        Logo.layer.cornerRadius = Logo.frame.size.width / 2
        Logo.clipsToBounds = true
        // Do any additional setup after loading the view, typically from a nib.
    }


}


//
//  CrayonDetailViewController.swift
//  Crayons
//
//  Created by Pritesh Nadiadhara on 12/3/18.
//  Copyright © 2018 Pritesh Nadiadhara. All rights reserved.
//

import UIKit

class CrayonDetailViewController: UIViewController {
    public var crayon: Crayon!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = crayon.setColor()
    }
    

  

}

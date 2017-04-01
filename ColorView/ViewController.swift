//
//  ViewController.swift
//  ColorView
//
//  Created by Jakub Majewski on 01.04.2017.
//  Copyright © 2017 Jakub Majewski. All rights reserved.
//
//  self.view.bounds
//  określa rozmiar widoku, który jest prezentowany użytkownikowi
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let colorView = ColorView(frame: self.view.bounds)
        self.view.addSubview(colorView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

}


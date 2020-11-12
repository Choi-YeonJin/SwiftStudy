//
//  ViewController.swift
//  SwiftStudy
//
//  Created by sw 10 on 2020/11/12.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbHello: UILabel!
    @IBOutlet weak var txtName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnSubmit(_ sender: UIButton) {
        lbHello.text = "Hello! " + txtName.text!
    }
    
}


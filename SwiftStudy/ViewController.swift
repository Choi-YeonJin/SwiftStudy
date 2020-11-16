//
//  ViewController.swift
//  SwiftStudy
//
//  Created by sw 10 on 2020/11/12.
//

import UIKit

class ViewController: UIViewController {
    var isZoom = false
    var imgOn : UIImage?
    var imgOff : UIImage?

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var btnResize: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imgOn = UIImage(named: "lightOn.png")
        imgOff = UIImage(named: "lightOff.png")
        
        imgView.image = imgOn
        
        
    }
    
    @IBAction func btnResizeImage(_ sender: UIButton) {
        let scale : CGFloat = 2.0
        var newWidth:CGFloat, newHeight:CGFloat
        
        if(isZoom){ //true - 축소
            newWidth = imgView.frame.width/scale
            newHeight = imgView.frame.height/scale
            imgView.frame.size = CGSize(width: newWidth, height: newHeight)
            btnResize.setTitle("확대" , for: .normal)
            
        }else{ // false - 확대
            newWidth = imgView.frame.width*scale
            newHeight = imgView.frame.height*scale
            imgView.frame.size = CGSize(width: newWidth, height: newHeight)
            btnResize.setTitle("축소" , for: .normal)
        }
        isZoom = !isZoom
    }
    
    @IBAction func switchImgOnOff(_ sender: UISwitch) {
        if(sender.isOn){
            imgView.image = imgOn
        }else{
            imgView.image = imgOff
        }
    }
}


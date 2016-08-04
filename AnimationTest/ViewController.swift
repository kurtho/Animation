//
//  ViewController.swift
//  AnimationTest
//
//  Created by KurtHo on 2016/8/2.
//  Copyright © 2016年 Kurt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myView: UIView!
    
    @IBOutlet weak var myImage: UIImageView!
    
    @IBOutlet weak var myButton: UIButton!
    
    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var myTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myView.transform = CGAffineTransformMakeScale(1.3, 1.0)
        UIView.animateWithDuration(1, delay: 1.0, options: UIViewAnimationOptions.Autoreverse, animations: {
            self.myView.transform = CGAffineTransformIdentity
            }, completion: nil)
        
        
        myImage.transform = CGAffineTransformMakeTranslation(500, 1000)
        UIView.animateWithDuration(1.5, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: [], animations: {
            self.myImage.transform = CGAffineTransformIdentity
            }, completion: nil)
        
        myButton.transform = CGAffineTransformMakeTranslation(0, 500)
        UIView.animateWithDuration(0.4, delay: 0.5, options: [], animations: {
            self.myButton.transform = CGAffineTransformIdentity
            }, completion: nil)
        
        let scale = CGAffineTransformMakeScale(2 , 2)
        let translate = CGAffineTransformMakeTranslation(0, 500)
        myLabel.transform = CGAffineTransformConcat(scale, translate)
        UIView.animateWithDuration(1.5, delay: 1.5, options: [], animations: {
            self.myLabel.transform = CGAffineTransformIdentity
            }, completion: nil)
        
        myTextField.alpha = 0
        if myTextField.alpha == 0 {
            UIView.animateWithDuration(2, delay: 1.5, options: [], animations: {
                self.myTextField.alpha = 1
                }, completion: {
                    if $0 {
                        self.myTextField.hidden = true
                    }
            })
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}


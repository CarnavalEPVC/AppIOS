//
//  RatingViewController.swift
//  CarnavalEPVC
//
//  Created by Gustavo on 11/02/2023.
//

import Foundation
import UIKit
import Firebase

class RatingViewController: UIStackView{
    var starsRating = 0
    var starsEmptyPicName = "star"
    var starsFilledPicName = "starsEmptyPicName"
    override func draw(_ rect: CGRect){
        let myViews = self.subviews.filter {$0 is UIButton }
        var starTag = 2
        for theView in myViews{
            if let theButton = theView as? UIButton{
                theButton.setImage(UIImage(named: starsEmptyPicName), for: .normal)
                theButton.addTarget(self, action: #selector(self.pressed(sender:)), for: .touchUpInside)
                theButton.tag = starTag
                starTag = starTag + 2
            }
        }
    }
    @objc func pressed(sender:UIButton){
        starsRating = sender.tag
        let myViews = self.subviews.filter{$0 is UIButton}
        for theView in myViews{
            if let theButton = theView as? UIButton{
                if theButton.tag > sender.tag{
                    theButton.setImage(UIImage(named: starsEmptyPicName), for: .normal)
                }else{
                    theButton.setImage(UIImage(named: starsFilledPicName), for: .normal)
                }
            }
        }
    }
}

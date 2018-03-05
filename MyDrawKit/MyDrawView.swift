//
//  MyDrawView.swift
//  MyDrawKit
//
//  Created by Perry Davies on 05/03/2018.
//  Copyright © 2018 Perry Davies. All rights reserved.
//

import UIKit
import QuartzCore
@IBDesignable
class MyDrawView: UIView {
 @IBInspectable   var startColor: UIColor = UIColor.white
 @IBInspectable   var endColor: UIColor = UIColor.blue
 @IBInspectable   var endRadius: CGFloat = 100
   
    override func draw(_ rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        let colorSpace = CGColorSpaceCreateDeviceRGB()
        let locations: [CGFloat] = [0.0, 1.0]
        
        
        let gradient = CGGradient(colorsSpace: colorSpace, colors: [startColor.cgColor, endColor.cgColor] as CFArray, locations: locations)
        
        var startPoint = CGPoint()
        var endPoint = CGPoint()
        
        let startRadius: CGFloat = 0
        startPoint.x = 210
        startPoint.y = 180
        endPoint.x = 210
        endPoint.y = 200
        
        context?.drawRadialGradient(gradient!,startCenter: startPoint,   startRadius: startRadius, endCenter: endPoint, endRadius: endRadius, options: .drawsBeforeStartLocation)
        
        
        
    }
    

}

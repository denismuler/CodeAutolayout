//
//  EmptyCircleView.swift
//  lightApps_Test
//
//  Created by Georgie Muler on 15.08.2022.
//

import UIKit

class EmptyCircleView: UIView {
    
    var circleView = UIView()
    var logoView = UIImageView()
    var circleLabel = CircleTextLabel(textAlignment: .center, fontSize: 13)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        circleView = UIView (frame: CGRect(x: 0, y: 0, width: 111, height: 111))
        circleView.layer.cornerRadius = circleView.frame.size.width/2
        circleView.backgroundColor = .white
        
        addSubview(circleView)
        dropShadow()
    }
    
    private func dropShadow() {
        circleView.layer.shadowColor = UIColor.black.cgColor
        circleView.layer.shadowOpacity = 0.5
        circleView.layer.shadowOffset = .zero
        circleView.layer.shadowRadius = 5
        
        let innerShadow = CALayer()
        innerShadow.frame = circleView.bounds
        let radius = circleView.frame.size.width/2
        let path = UIBezierPath(roundedRect: innerShadow.bounds.insetBy(dx: 5, dy:5), cornerRadius:radius)
        let cutout = UIBezierPath(roundedRect: innerShadow.bounds, cornerRadius:radius).reversing()
        
        path.append(cutout)
        innerShadow.shadowPath = path.cgPath
        innerShadow.masksToBounds = true
        
        innerShadow.shadowColor = UIColor.black.cgColor
        innerShadow.shadowOffset = .zero
        innerShadow.shadowOpacity = 0.3
        innerShadow.shadowRadius = 5
        innerShadow.cornerRadius = circleView.frame.size.width/2
        layer.addSublayer(innerShadow)
    }
}

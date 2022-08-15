//
//  CircleView.swift
//  lightApps_Test
//
//  Created by Georgie Muler on 15.08.2022.
//

import UIKit

class CircleView: UIView {
    
    let containerView = UIView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        let cirleView = UIView (frame: CGRect(x: 0, y: 0, width: 111, height: 111))
        cirleView.layer.cornerRadius = cirleView.frame.size.width/2
        cirleView.backgroundColor = .white
        
        let frame = cirleView.bounds
        
        let path = UIBezierPath(arcCenter: CGPoint(x: frame.size.width / 2, y: frame.size.height / 2),
                                radius: frame.width / 2,
                                startAngle: 0,
                                endAngle: .pi,
                                clockwise: true)
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
        shapeLayer.fillColor = UIColor.purple.cgColor
        
        self.addSubview(cirleView)
        self.layer.addSublayer(shapeLayer)

    }
}

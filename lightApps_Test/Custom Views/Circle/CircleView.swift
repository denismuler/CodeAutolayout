//
//  CircleView.swift
//  lightApps_Test
//
//  Created by Georgie Muler on 15.08.2022.
//

import UIKit

class CircleView: UIView {
    
    var circleView = UIView()
    var vectorView = UIImageView()
    var logoView = UIImageView()
    var circleTitle = CircleTextLabel(textAlignment: .center, fontSize: 10)
    var circleFilesTitle = CircleTextLabel(textAlignment: .center, fontSize: 10)
    var circleDuplicateTitle = CircleTextLabel(textAlignment: .center, fontSize: 10)
    
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
        dropShadow()
        
        let frame = circleView.bounds
        
        let path1 = UIBezierPath()
        path1.move(to: CGPoint(x: 54, y: 50))
        path1.addLine(to: CGPoint(x: 110, y: 70))
        path1.addLine(to: CGPoint(x: 0, y: 70))
        
        let shapeLayer1 = CAShapeLayer()
        shapeLayer1.path = path1.cgPath
        shapeLayer1.fillColor = UIColor(red: 117/255.0, green: 120/255.0, blue: 186/255.0, alpha: 1).cgColor
        
        let path2 = UIBezierPath(arcCenter: CGPoint(x: frame.size.width / 2,
                                                    y: frame.size.height / 2),
                                 radius: frame.width / 2,
                                 startAngle: .pi/12,
                                 endAngle: .pi - .pi/12,
                                 clockwise: true)
        
        let shapeLayer2 = CAShapeLayer()
        shapeLayer2.path = path2.cgPath
        shapeLayer2.fillColor = UIColor(red: 117/255.0, green: 120/255.0, blue: 186/255.0, alpha: 1).cgColor
        
        let path3 = UIBezierPath(arcCenter: CGPoint(x: 55, y: 55),
                                 radius: frame.width / 6,
                                 startAngle: 0,
                                 endAngle: 2 * CGFloat.pi,
                                 clockwise: true)
        
        let shapeLayer3 = CAShapeLayer()
        shapeLayer3.path = path3.cgPath
        shapeLayer3.fillColor = UIColor.white.cgColor
        
        self.addSubview(circleView)
        self.layer.addSublayer(shapeLayer1)
        self.layer.addSublayer(shapeLayer2)
        self.layer.addSublayer(shapeLayer3)
        
        vectorView = UIImageView (frame: CGRect (x: 0, y: 0, width: 10, height: 10))
        vectorView.contentMode = .center
        vectorView.image = UIImage(named: "Vector")
        vectorView.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(vectorView)
        
        NSLayoutConstraint.activate([
            vectorView.centerXAnchor.constraint(equalTo: circleView.centerXAnchor),
            vectorView.bottomAnchor.constraint(equalTo: circleView.bottomAnchor, constant: -45),
            vectorView.leadingAnchor.constraint(equalTo: circleView.leadingAnchor, constant: 55)
        ])
    }
    
    func dropShadow() {
        circleView.layer.shadowColor = UIColor.black.cgColor
        circleView.layer.shadowOpacity = 0.5
        circleView.layer.shadowOffset = .zero
        circleView.layer.shadowRadius = 5
    }
}

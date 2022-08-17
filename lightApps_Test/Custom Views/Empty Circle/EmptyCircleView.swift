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
        
        self.addSubview(circleView)
        
//        logoView = UIImageView(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
//        logoView.image = UIImage(named: "allPhotos")
//        logoView.translatesAutoresizingMaskIntoConstraints = false
//        
//        self.addSubview(logoView)
//        
//        NSLayoutConstraint.activate([
//            logoView.centerXAnchor.constraint(equalTo: circleView.centerXAnchor),
//            logoView.bottomAnchor.constraint(equalTo: circleView.bottomAnchor, constant: -55),
//            logoView.leadingAnchor.constraint(equalTo: circleView.leadingAnchor, constant: 35),
//            logoView.topAnchor.constraint(equalTo: circleView.topAnchor, constant: 16)
//        ])
    }
}

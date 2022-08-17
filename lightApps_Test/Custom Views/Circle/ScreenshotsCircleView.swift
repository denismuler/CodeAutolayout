//
//  ScreenshotsCircleView.swift
//  lightApps_Test
//
//  Created by Georgie Muler on 17.08.2022.
//

import UIKit

class ScreenshotsCircleView: CircleView {
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        logoView = UIImageView(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
        logoView.image = UIImage(named: "screenshots")
        logoView.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(logoView)
        
        NSLayoutConstraint.activate([
            logoView.centerXAnchor.constraint(equalTo: circleView.centerXAnchor),
            logoView.bottomAnchor.constraint(equalTo: circleView.bottomAnchor, constant: -70),
            logoView.leadingAnchor.constraint(equalTo: circleView.leadingAnchor, constant: 35),
            logoView.topAnchor.constraint(equalTo: circleView.topAnchor, constant: 7)
        ])
        
        circleTitle.text = "Duplicate screenshots"
        circleTitle.font = circleTitle.font.withSize(10)
        self.addSubview(circleTitle)
        
        NSLayoutConstraint.activate([
            circleTitle.centerXAnchor.constraint(equalTo: circleView.centerXAnchor),
            circleTitle.topAnchor.constraint(equalTo: logoView.topAnchor, constant: 34),
            circleTitle.leadingAnchor.constraint(equalTo: circleView.leadingAnchor, constant: 5)
        ])
    }
    
}
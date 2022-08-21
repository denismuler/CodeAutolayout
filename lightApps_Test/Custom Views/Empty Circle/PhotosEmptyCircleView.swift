//
//  PhotosEmptyCircleView.swift
//  lightApps_Test
//
//  Created by Georgie Muler on 17.08.2022.
//

import UIKit

final class PhotosEmptyCircleView: EmptyCircleView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        logoView = UIImageView(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
        logoView.image = UIImage(named: "allPhotos")
        logoView.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(logoView)
        NSLayoutConstraint.activate([
            logoView.centerXAnchor.constraint(equalTo: circleView.centerXAnchor),
            logoView.bottomAnchor.constraint(equalTo: circleView.bottomAnchor, constant: -55),
            logoView.leadingAnchor.constraint(equalTo: circleView.leadingAnchor, constant: 35),
            logoView.topAnchor.constraint(equalTo: circleView.topAnchor, constant: 16)
        ])
        
        configureCircleLabel()
    }
    
    private func configureCircleLabel() {
        circleLabel.text = "ALL PHOTOS"
        circleLabel.font = circleLabel.font.withSize(13)
        circleLabel.numberOfLines = 2
        circleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(circleLabel)
        
        NSLayoutConstraint.activate([
            circleLabel.topAnchor.constraint(equalTo: logoView.bottomAnchor, constant: 8),
            circleLabel.leadingAnchor.constraint(equalTo: circleView.leadingAnchor, constant: 27),
            circleLabel.trailingAnchor.constraint(equalTo: circleView.trailingAnchor, constant: -25)
        ])
    }
}

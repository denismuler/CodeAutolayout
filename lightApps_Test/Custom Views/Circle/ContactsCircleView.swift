//
//  ContactsCircleView.swift
//  lightApps_Test
//
//  Created by Georgie Muler on 17.08.2022.
//

import UIKit

final class ContactsCircleView: CircleView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        logoView = UIImageView(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
        logoView.image = UIImage(named: "contacts")
        logoView.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(logoView)
        
        NSLayoutConstraint.activate([
            logoView.centerXAnchor.constraint(equalTo: circleView.centerXAnchor),
            logoView.bottomAnchor.constraint(equalTo: circleView.bottomAnchor, constant: -70),
            logoView.leadingAnchor.constraint(equalTo: circleView.leadingAnchor, constant: 35),
            logoView.topAnchor.constraint(equalTo: circleView.topAnchor, constant: 7)
        ])
        
        configureLabels()
    }
    
    private func configureLabels() {
        circleTitle.text = "Duplicate contacts"
        circleTitle.font = circleTitle.font.withSize(10)
        self.addSubview(circleTitle)
        
        NSLayoutConstraint.activate([
            circleTitle.centerXAnchor.constraint(equalTo: circleView.centerXAnchor),
            circleTitle.topAnchor.constraint(equalTo: logoView.topAnchor, constant: 34),
            circleTitle.leadingAnchor.constraint(equalTo: circleView.leadingAnchor, constant: 5)
        ])
        
        circleFilesTitle.text = "30 contacts"
        circleFilesTitle.font = circleFilesTitle.font.withSize(13)
        circleFilesTitle.textColor = .white
        circleFilesTitle.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(circleFilesTitle)
        
        NSLayoutConstraint.activate([
            circleFilesTitle.bottomAnchor.constraint(equalTo: circleView.bottomAnchor, constant: -20),
            circleFilesTitle.leadingAnchor.constraint(equalTo: circleView.leadingAnchor, constant: 17),
            circleFilesTitle.trailingAnchor.constraint(equalTo: circleView.trailingAnchor, constant: -20)
        ])
        
        circleDuplicateTitle.text = "7 duplicate"
        circleDuplicateTitle.font = circleDuplicateTitle.font.withSize(9)
        circleDuplicateTitle.textColor = .black
        circleDuplicateTitle.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(circleDuplicateTitle)
        
        NSLayoutConstraint.activate([
            circleDuplicateTitle.centerXAnchor.constraint(equalTo: circleView.centerXAnchor),
            circleDuplicateTitle.topAnchor.constraint(equalTo: circleFilesTitle.bottomAnchor, constant: 1)
        ])
        
    }
}

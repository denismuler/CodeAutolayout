//
//  LargeCircleView.swift
//  lightApps_Test
//
//  Created by Georgie Muler on 17.08.2022.
//

import UIKit

class LargeCircleView: UIView {

    var largeCircleView = UIView()
    var percentageTitle = CircleTextLabel(textAlignment: .center, fontSize: 50)
    var storageTitle = CircleTextLabel(textAlignment: .center, fontSize: 18)
    var statsLabel = CircleTextLabel(textAlignment: .center, fontSize: 11)
    var statsLabel2 = CircleTextLabel(textAlignment: .center, fontSize: 11)
    var statsLabel3 = CircleTextLabel(textAlignment: .center, fontSize: 11)
    var statsResultsLabel = CircleTextLabel(textAlignment: .center, fontSize: 11)
    var statsResultsLabel2 = CircleTextLabel(textAlignment: .center, fontSize: 11)
    var statsResultsLabel3 = CircleTextLabel(textAlignment: .center, fontSize: 11)
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        
        largeCircleView = UIView (frame: CGRect(x: 0, y: 0, width: 199, height: 199))
        largeCircleView.layer.cornerRadius = largeCircleView.frame.size.width/2 
        largeCircleView.backgroundColor = UIColor(red: 117/255.0, green: 120/255.0, blue: 186/255.0, alpha: 0.7)
        largeCircleView.layer.borderWidth = 3
        largeCircleView.layer.borderColor = UIColor.white.cgColor
        
        self.addSubview(largeCircleView)

        percentageTitle.text = "76%"
        percentageTitle.font = percentageTitle.font.withSize(50)
        percentageTitle.textColor = .white
        
        self.addSubview(percentageTitle)
        
        NSLayoutConstraint.activate([
            percentageTitle.topAnchor.constraint(equalTo: largeCircleView.topAnchor, constant: 50),
            percentageTitle.leadingAnchor.constraint(equalTo: largeCircleView.leadingAnchor, constant: 53),
            percentageTitle.trailingAnchor.constraint(equalTo: largeCircleView.trailingAnchor, constant: -40)
        ])
        
        storageTitle.text = "Your Storage"
        storageTitle.font = storageTitle.font.withSize(18)
        storageTitle.textColor = .white

        self.addSubview(storageTitle)
        
        NSLayoutConstraint.activate([
            storageTitle.topAnchor.constraint(equalTo: largeCircleView.topAnchor, constant: 20),
            storageTitle.leadingAnchor.constraint(equalTo: largeCircleView.leadingAnchor, constant: 46),
            storageTitle.trailingAnchor.constraint(equalTo: largeCircleView.trailingAnchor, constant: -45)
        ])
        
        configureStatsLabels()
        configureStatsResultsLabels()
    }
    
    func configureStatsLabels() {
        statsLabel.text = "Total memory:"
        statsLabel.font = statsLabel.font.withSize(11)
        statsLabel.textColor = UIColor(red: 209/255.0, green: 209/255.0, blue: 209/255.0, alpha: 1)
        self.addSubview(statsLabel)
        
        NSLayoutConstraint.activate([
            statsLabel.topAnchor.constraint(equalTo: largeCircleView.topAnchor, constant: 117),
            statsLabel.trailingAnchor.constraint(equalTo: largeCircleView.trailingAnchor, constant: -86)
        ])
        
        statsLabel2.text = "Available:"
        statsLabel2.font = statsLabel.font.withSize(11)
        statsLabel2.textColor = UIColor(red: 209/255.0, green: 209/255.0, blue: 209/255.0, alpha: 1)
        self.addSubview(statsLabel2)

        NSLayoutConstraint.activate([
            statsLabel2.topAnchor.constraint(equalTo: largeCircleView.topAnchor, constant: 135),
            statsLabel2.trailingAnchor.constraint(equalTo: largeCircleView.trailingAnchor, constant: -86)
            
        ])
        
        statsLabel3.text = "Trash size:"
        statsLabel3.font = statsLabel.font.withSize(11)
        statsLabel3.textColor = UIColor(red: 209/255.0, green: 209/255.0, blue: 209/255.0, alpha: 1)
        self.addSubview(statsLabel3)
        
        NSLayoutConstraint.activate([
            statsLabel3.topAnchor.constraint(equalTo: largeCircleView.topAnchor, constant: 153),
            statsLabel3.trailingAnchor.constraint(equalTo: largeCircleView.trailingAnchor, constant: -86)
            
        ])
    }
    func configureStatsResultsLabels() {
        statsResultsLabel.text = "128 GB"
        statsResultsLabel.font = statsResultsLabel.font.withSize(11)
        statsResultsLabel.textColor = .white
        self.addSubview(statsResultsLabel)
        
        NSLayoutConstraint.activate([
            statsResultsLabel.topAnchor.constraint(equalTo: largeCircleView.topAnchor, constant: 117),
            statsResultsLabel.leftAnchor.constraint(equalTo: statsLabel.rightAnchor, constant: 1)
        ])
        
        statsResultsLabel2.text = "24 GB"
        statsResultsLabel2.font = statsResultsLabel2.font.withSize(11)
        statsResultsLabel2.textColor = .white
        self.addSubview(statsResultsLabel2)

        NSLayoutConstraint.activate([
            statsResultsLabel2.topAnchor.constraint(equalTo: largeCircleView.topAnchor, constant: 135),
            statsResultsLabel2.leftAnchor.constraint(equalTo: statsLabel2.rightAnchor, constant: 1)

        ])
        
        statsResultsLabel3.text = "470 MB"
        statsResultsLabel3.font = statsLabel.font.withSize(11)
        statsResultsLabel3.textColor = .white
        self.addSubview(statsResultsLabel3)
        
        NSLayoutConstraint.activate([
            statsResultsLabel3.topAnchor.constraint(equalTo: largeCircleView.topAnchor, constant: 153),
            statsResultsLabel3.leftAnchor.constraint(equalTo: statsLabel3.rightAnchor, constant: 1)
        ])


        
    }
}

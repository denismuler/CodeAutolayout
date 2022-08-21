//
//  swift
//  lightApps_Test
//
//  Created by Georgie Muler on 17.08.2022.
//

import UIKit

final class LargeCircleView: UIView {
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
        
    private var percentageTitle = CircleTextLabel(textAlignment: .center, fontSize: 50)
    private var storageTitle = CircleTextLabel(textAlignment: .center, fontSize: 18)
    
    private var totalMemoryLabel = CircleTextLabel(textAlignment: .center, fontSize: 11)
    private var availibleLabel = CircleTextLabel(textAlignment: .center, fontSize: 11)
    private var trashSizeLabel = CircleTextLabel(textAlignment: .center, fontSize: 11)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
        configureUI()
    }
    
    private func configureUI() {
        
        addSubview(storageTitle)
        storageTitle.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            storageTitle.topAnchor.constraint(equalTo: topAnchor, constant: 30),
            storageTitle.heightAnchor.constraint(equalToConstant: 24),
            storageTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 35),
            storageTitle.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -35),
        ])

        addSubview(percentageTitle)
        percentageTitle.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            percentageTitle.topAnchor.constraint(equalTo: storageTitle.bottomAnchor, constant: 5),
            percentageTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            percentageTitle.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20)
        ])
        
        addSubview(totalMemoryLabel)
        totalMemoryLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            totalMemoryLabel.topAnchor.constraint(equalTo: percentageTitle.bottomAnchor),
            totalMemoryLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            totalMemoryLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
        ])
        
        addSubview(availibleLabel)
        availibleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            availibleLabel.topAnchor.constraint(equalTo: totalMemoryLabel.bottomAnchor, constant: 5),
            availibleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            availibleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
        ])
        
        addSubview(trashSizeLabel)
        trashSizeLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            trashSizeLabel.topAnchor.constraint(equalTo: availibleLabel.bottomAnchor, constant: 5),
            trashSizeLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            trashSizeLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
        ])
    }
    
    private func configure() {
        
        layer.borderWidth = 3
        layer.backgroundColor = UIColor(red: 209/255, green: 209/255, blue: 209/255, alpha: 0.2).cgColor
        layer.borderColor = UIColor.white.cgColor
        
        percentageTitle.text = "76%"
        if DeviceTypes.isiPhone8Standard {
            percentageTitle.font = .systemFont(ofSize: 45)
        } else {
        percentageTitle.font = .systemFont(ofSize: 100)
        }
        percentageTitle.textColor = .white

        storageTitle.text = "Your Storage"
        storageTitle.font = .systemFont(ofSize: 22)
        storageTitle.textColor = .white

        configureStatsLabels()
    }
    
    private func configureStatsLabels() {
        totalMemoryLabel.textColor = UIColor(red: 209/255, green: 209/255, blue: 209/255, alpha: 1)

        let strNumber: NSString = "Total memory: 128 GB" as NSString
        let range = (strNumber).range(of: "128 GB")
        let attribute = NSMutableAttributedString.init(string: strNumber as String)
        attribute.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.white , range: range)
        totalMemoryLabel.attributedText = attribute
        totalMemoryLabel.font = totalMemoryLabel.font.withSize(16)
        
        availibleLabel.textColor = UIColor(red: 209/255, green: 209/255, blue: 209/255, alpha: 1)
        
        let strNumber2: NSString = "Available: 24 GB" as NSString
        let range2 = (strNumber2).range(of: "24 GB")
        let attribute2 = NSMutableAttributedString.init(string: strNumber2 as String)
        attribute2.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.white , range: range2)
        availibleLabel.attributedText = attribute2
        availibleLabel.font = availibleLabel.font.withSize(16)

        trashSizeLabel.textColor = UIColor(red: 209/255, green: 209/255, blue: 209/255, alpha: 1)
        
        let strNumber3: NSString = "Trash size: 470 MB" as NSString
        let range3 = (strNumber3).range(of: "470 MB")
        let attribute3 = NSMutableAttributedString.init(string: strNumber3 as String)
        attribute3.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.white , range: range3)
        trashSizeLabel.attributedText = attribute3
        trashSizeLabel.font = trashSizeLabel.font.withSize(16)
    }
}

//
//  EmptyCircleView.swift
//  lightApps_Test
//
//  Created by Georgie Muler on 15.08.2022.
//

import UIKit

class EmptyCircleView: UIView {
    
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

        self.addSubview(cirleView)
    }
}

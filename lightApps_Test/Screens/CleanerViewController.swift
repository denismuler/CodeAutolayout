//
//  ViewController.swift
//  lightApps_Test
//
//  Created by Georgie Muler on 15.08.2022.
//

import UIKit

final class CleanerViewController: UIViewController {
    
    private let button = UIButton()
    
    private let circle = PhotosCircleView()
    private let circle2 = ScreenshotsCircleView()
    private let circle3 = ContactsCircleView()
    
    private let emptyCircle = PhotosEmptyCircleView()
    private let emptyCircle2 = StorageEmptyCircleView()
    private let emptyCircle3 = VideosEmptyCircleView()
    
    private let largeCircle = LargeCircleView()
    
    lazy var gradient: CAGradientLayer = {
        let gradient = CAGradientLayer()
        gradient.type = .axial
        gradient.colors = [
            UIColor(red: 109/255, green: 112/255, blue: 195/255, alpha: 1).cgColor,
            UIColor(red: 79/255, green: 81/255, blue: 166/255, alpha: 1).cgColor
        ]
        gradient.locations = [0, 1]
        return gradient
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        largeCircle.layer.cornerRadius = largeCircle.frame.width/2
    }
    
    private func configureUI() {
        gradient.frame = view.bounds
        view.layer.addSublayer(gradient)
        assignbackground()
        configureNavButton()
                
//MARK: - Circle Button
        view.addSubview(circle)
        circle.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            circle.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -207),
            circle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 11),
            circle.widthAnchor.constraint(equalToConstant: 111),
            circle.heightAnchor.constraint(equalToConstant: 111)
        ])
        
        view.addSubview(circle2)
        circle2.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            circle2.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -255),
            circle2.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            circle2.widthAnchor.constraint(equalToConstant: 111),
            circle2.heightAnchor.constraint(equalToConstant: 111)
        ])
        
        view.addSubview(circle3)
        circle3.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            circle3.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -207),
            circle3.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -11),
            circle3.widthAnchor.constraint(equalToConstant: 111),
            circle3.heightAnchor.constraint(equalToConstant: 111)
        ])
        
//MARK: - Empty Circle Button
        view.addSubview(emptyCircle)
        emptyCircle.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            emptyCircle.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -23),
            emptyCircle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 53),
            emptyCircle.widthAnchor.constraint(equalToConstant: 111),
            emptyCircle.heightAnchor.constraint(equalToConstant: 111)
        ])
        
        view.addSubview(emptyCircle2)
        emptyCircle2.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            emptyCircle2.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -134),
            emptyCircle2.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            emptyCircle2.widthAnchor.constraint(equalToConstant: 111),
            emptyCircle2.heightAnchor.constraint(equalToConstant: 111)
        ])
        
        view.addSubview(emptyCircle3)
        emptyCircle3.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            emptyCircle3.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -23),
            emptyCircle3.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -53),
            emptyCircle3.widthAnchor.constraint(equalToConstant: 111),
            emptyCircle3.heightAnchor.constraint(equalToConstant: 111)
        ])
        
//MARK: - Large Circle Button
        view.addSubview(largeCircle)
        largeCircle.translatesAutoresizingMaskIntoConstraints = false
        largeCircle.layer.masksToBounds = true
            
        if DeviceTypes.isiPhone8Standard {
        NSLayoutConstraint.activate([
            largeCircle.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.55),
            largeCircle.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.55),
            largeCircle.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            largeCircle.bottomAnchor.constraint(equalTo: circle2.topAnchor, constant: -25)
        ])
        } else {
            NSLayoutConstraint.activate([
                largeCircle.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
                largeCircle.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
                largeCircle.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                largeCircle.bottomAnchor.constraint(equalTo: circle2.topAnchor, constant: -25)
            ])
        }
    }
    
    private func configureNavButton() {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "cleaner"), for: .normal)
        button.setTitle("CLEANER", for: .normal)
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: -5, bottom: 0, right: 0)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        let barButton = UIBarButtonItem(customView: button)
        self.navigationItem.rightBarButtonItem = barButton

        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "",
                                                           style: .plain,
                                                           target: self,
                                                           action: #selector(didTapButton))
        let leftNavButton = navigationItem.leftBarButtonItem
        leftNavButton?.tintColor = UIColor.white
        leftNavButton?.image = UIImage(named: "backButton")
    }
    
    @objc func didTapButton() {
        let speedVC = SpeedViewController()
        navigationController?.pushViewController(speedVC, animated: true)        
    }
    
    private func assignbackground() {
        let background = UIImage(named: "bubbles.png")
        
        var imageView : UIImageView!
        imageView = UIImageView(frame: view.bounds)
        imageView.contentMode =  UIView.ContentMode.scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = background
        imageView.center = view.center
        view.addSubview(imageView)
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 35),
            imageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 0),
            imageView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 0)
        ])
        
    }
}


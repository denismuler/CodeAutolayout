//
//  ViewController.swift
//  lightApps_Test
//
//  Created by Georgie Muler on 15.08.2022.
//

import UIKit

class CleanerViewController: UIViewController {
    
    let button = UIButton()
    
    let circle = CircleView()
    let circle1 = CircleView()
    let circle2 = CircleView()
    let emptyCircle = EmptyCircleView()
    let emptyCircle2 = EmptyCircleView()
    let emptyCircle3 = EmptyCircleView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gradient.frame = view.bounds
        view.layer.addSublayer(gradient)
        assignbackground()
        
        configureNavButton()
        configureCircleButton()
        configureEmptyCircleButton()
        
      
    }
    
    lazy var gradient: CAGradientLayer = {
        let gradient = CAGradientLayer()
        gradient.type = .axial
        gradient.colors = [
            UIColor(red: 109/255.0, green: 112/255.0, blue: 195/255.0, alpha: 1).cgColor,
            UIColor(red: 79/255.0, green: 81/255.0, blue: 166/255.0, alpha: 1).cgColor
        ]
        gradient.locations = [0, 1]
        return gradient
    }()
    
    func configureNavButton() {
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(didTapButton))
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "CLEANER", style: .plain, target: self, action: #selector(didTapButton))
    }
    
    func configureCircleButton() {
        
        view.addSubview(circle)
        circle.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            circle.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -207),
            circle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 11),
            circle.widthAnchor.constraint(equalToConstant: 111),
            circle.heightAnchor.constraint(equalToConstant: 111)
        ])
        
        view.addSubview(circle1)
        circle1.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            circle1.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -255),
            circle1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            circle1.widthAnchor.constraint(equalToConstant: 111),
            circle1.heightAnchor.constraint(equalToConstant: 111)
        ])
        
        view.addSubview(circle2)
        circle2.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            circle2.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -207),
            circle2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -11),
            circle2.widthAnchor.constraint(equalToConstant: 111),
            circle2.heightAnchor.constraint(equalToConstant: 111)
        ])
    }
    
    func configureEmptyCircleButton() {
        
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
        
    }
    
    @objc func didTapButton() {
        let speedVC = SpeedViewController()
        navigationController?.pushViewController(speedVC, animated: true)        
    }
    
    func assignbackground() {
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


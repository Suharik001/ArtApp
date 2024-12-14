//
//  ViewController.swift
//  ArtApp
//
//  Created by Сергей Сухарев on 12.12.2024.
//

import UIKit

class ViewController: UIViewController {
    
    let imageView = UIImageView()
    let scrollView = UIScrollView()
    let labelTitle = UILabel()
    let titleAboutEvent = UILabel()
    let textViewDescription = UITextView()
    let buttonBack = UIButton()
    var buttonBookmark = UIButton()
    let buttonShared = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        setupView()
        setupConstraints()
        configuration()
    }
    
    private func setupView() {
        view.addSubview(imageView)
        view.addSubview(buttonShared)
        view.addSubview(scrollView)
    }
    
    private func configuration() {
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "Frida3")
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            imageView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/2.3),
        ])
    }
}

@available(iOS 18.0, *)
#Preview { (ViewController())
}


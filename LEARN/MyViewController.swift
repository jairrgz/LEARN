//
//  MyViewController.swift
//  LEARN
//
//  Created by Jorge Jair Ramirez Gaston Zuloeta on 7/01/25.
//

import Foundation
import UIKit

class MyViewController : UIViewController {
    let cardView = UIView()
    let coverImageView = UIImageView()
    let titleLabel = UILabel()
    let captionLabel = UILabel()
    let descriptionLabel = UILabel()
    let backgroundImageView = UIImageView()
    let closeButton = UIButton()
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        
        cardView.frame = CGRect(x: 40, y: 255, width: 300, height: 250)
        cardView.layer.cornerRadius = 14
        cardView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        cardView.layer.shadowOpacity = 0.25
        cardView.layer.shadowOffset = CGSize(width: 0, height: 10)
        cardView.layer.shadowRadius = 10
        
        titleLabel.frame = CGRect(x: 16, y: 16, width: 272, height: 38)
        titleLabel.text = "Learn Swift"
        titleLabel.textColor = .white
        titleLabel.font = UIFont.systemFont(ofSize: 32, weight: .semibold)
        
        captionLabel.frame = CGRect(x: 16, y: 204, width: 272, height: 40)
        captionLabel.text = "Design Jair in Playground"
        captionLabel.textColor = .white
        captionLabel.numberOfLines = 0
        
        descriptionLabel.frame = CGRect(x: 20, y: 448, width: 335, height: 132)
        descriptionLabel.text = "Three years ago, Apple completely revamped their design language for the modern users. It is now much simpler, allowing designers to focus on animation and function rather than intricate visual details."
        descriptionLabel.textColor = .black
        descriptionLabel.numberOfLines = 10
        descriptionLabel.alpha = 0
        
        coverImageView.frame = CGRect(x: 00, y: 0, width: 300, height: 250)
        coverImageView.contentMode = .scaleAspectFill
        coverImageView.image = UIImage(named: "ios11-watch")
        coverImageView.clipsToBounds = true
        coverImageView.layer.cornerRadius = 14
        
        backgroundImageView.frame = CGRect(x: 0, y: 0, width: 400, height: 1200)
        backgroundImageView.image = UIImage(named: "ios11")
        
        closeButton.frame = CGRect(x: 328, y: 20, width: 28, height: 28)
        closeButton.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.5)
        closeButton.layer.cornerRadius = 14
        closeButton.setImage(#imageLiteral(resourceName: "Action-Close.png"), for: .normal)
        closeButton.addTarget(self, action: #selector(closeButtonTapped), for: .touchUpInside)
        closeButton.alpha = 0
        
        cardView.addSubview(coverImageView)
        cardView.addSubview(captionLabel)
        cardView.addSubview(titleLabel)
        cardView.addSubview(closeButton)
        cardView.addSubview(descriptionLabel)
        
        view.addSubview(backgroundImageView)
        view.addSubview(cardView)
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(cardViewTapped))
        cardView.addGestureRecognizer(tap)
        cardView.isUserInteractionEnabled = true
        
        self.view = view
    }
    
    @objc func cardViewTapped() {
        let animator = UIViewPropertyAnimator(duration: 0.7, dampingRatio: 0.7) {
            self.cardView.frame = CGRect(x: 0, y: 50, width: 400, height: 1200)
            self.cardView.layer.cornerRadius = 0
            self.titleLabel.frame = CGRect(x: 20, y: 20, width: 374, height: 38)
            self.captionLabel.frame = CGRect(x: 20, y: 370, width: 272, height: 40)
            self.descriptionLabel.alpha = 1
            self.coverImageView.frame = CGRect(x: 0, y: 0, width: 600, height: 420)
            self.backgroundImageView.frame = CGRect(x: 0, y: 50, width: 400, height: 1200)
            self.coverImageView.layer.cornerRadius = 0
            self.closeButton.alpha = 1
        }
        animator.startAnimation()
    }
    
    @objc func closeButtonTapped() {
        let animator = UIViewPropertyAnimator(duration: 0.7, dampingRatio: 0.7) {
            self.cardView.frame = CGRect(x: 20, y: 255, width: 300, height: 250)
            self.cardView.layer.cornerRadius = 14
            self.titleLabel.frame = CGRect(x: 16, y: 16, width: 272, height: 38)
            self.captionLabel.frame = CGRect(x: 16, y: 204, width: 272, height: 40)
            self.descriptionLabel.alpha = 0
            self.coverImageView.frame = CGRect(x: 0, y: 0, width: 300, height: 250)
            self.coverImageView.layer.cornerRadius = 14
            self.backgroundImageView.frame = CGRect(x: 0, y: 0, width: 400, height: 1200)
            self.closeButton.alpha = 0
        }
        animator.startAnimation()
    }
}

import SwiftUI

// MARK: - SwiftUI Preview
struct MyViewControllerPreview: UIViewControllerRepresentable {
    // Método para crear la instancia del UIViewController
    func makeUIViewController(context: Context) -> MyViewController {
        return MyViewController()
    }

    // Método para actualizar el UIViewController (opcional)
    func updateUIViewController(_ uiViewController: MyViewController, context: Context) {
        // No es necesario para esta vista
    }
}

// Preview para SwiftUI
struct MyViewController_Preview: PreviewProvider {
    static var previews: some View {
        MyViewControllerPreview()
            .edgesIgnoringSafeArea(.all) // Opcional para ver toda la pantalla
    }
}

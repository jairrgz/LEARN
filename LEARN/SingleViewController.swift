//
//  SingleViewController.swift
//  LEARN
//
//  Created by Jorge Jair Ramirez Gaston Zuloeta on 6/01/25.
//

import UIKit

class SingleViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /// 1. Creamos una nueva vista que usaremos como la vista principal del controlador.
        let initialView = UIView()
        initialView.backgroundColor = .white // Establecemos el color de fondo de esta vista a amarillo.

        /// 2. Creamos un UILabel (una etiqueta de texto) que mostrará "Jair was here".
        let titleLabel = UILabel()
        titleLabel.frame = CGRect(x: 80, y: 16, width: 272, height: 40)
        /// Establecemos su posición y tamaño con un rectángulo (x, y, ancho, alto).
        titleLabel.text = "Jair was here" // El texto que se mostrará en la etiqueta.
        titleLabel.textColor = .black // Cambiamos el color del texto a negro.
//        label.font = .systemFont(ofSize: 40)
        titleLabel.font = UIFont.systemFont(ofSize: 32, weight: .bold)
        
        let nameInCardLabel = UILabel()
        nameInCardLabel.frame = CGRect(x: 20, y: 20, width: 170, height:  20)
        nameInCardLabel.text = "Jair Ramírez Gaston"
        nameInCardLabel.textColor = .white

        
        let imageView = UIImageView()
        imageView.frame = CGRect(x: 0, y: 0, width: 340, height: 200)
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "ios11")
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 20
        
        /// 3. Creamos otra vista que actuará como una "tarjeta" roja.
        let cardView = UIView()
        cardView.frame = CGRect(x: 25, y: 250, width: 340, height: 200)
        // Posicionamos la vista y le damos un tamaño.
        cardView.backgroundColor = .red // Le damos un color de fondo rojo.
        cardView.layer.cornerRadius = 25
        cardView.layer.shadowOpacity = 0.9
        cardView.layer.shadowColor = CGColor(red: 140/255, green: 220/255, blue: 15/255, alpha: 0.8) // Este es ese verde limon aprox
        cardView.layer.shadowOffset = CGSize(width: 0 , height: 10)

        /// 4. Agregamos las sub-vistas (el label y la tarjeta) dentro de la vista inicial.
        initialView.addSubview(titleLabel) // Agregamos el label a la vista principal.
        initialView.addSubview(cardView) // Agregamos la tarjeta a la vista principal.
        cardView.addSubview(imageView)
        cardView.addSubview( nameInCardLabel)
        
        /// 5. Finalmente, configuramos la vista principal del controlador como la nueva vista inicial.
        self.view = initialView
        
        /// 6.  Agregando animación
        let animator = UIViewPropertyAnimator(duration: 1, dampingRatio: 5) {
            cardView.frame = CGRect(x: 40, y: 60, width: 340, height: 100)
            titleLabel.frame = CGRect(x: 44, y: 270, width: 200, height: 40)
            
        }
        
        animator.startAnimation()
        
        
    }
}




// Preview
import SwiftUI

struct SingleViewControllerPreview: UIViewControllerRepresentable {
    // Método para crear la instancia del UIViewController
    func makeUIViewController(context: Context) -> SingleViewController {
        return SingleViewController()
    }

    // Método para actualizar el UIViewController (opcional)
    func updateUIViewController(_ uiViewController: SingleViewController, context: Context) {
        // No es necesario para esta vista
    }
}

#Preview {
    SingleViewControllerPreview()
}

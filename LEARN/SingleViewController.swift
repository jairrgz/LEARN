//
//  SingleViewController.swift
//  LEARN
//
//  Created by Jorge Jair Ramirez Gaston Zuloeta on 6/01/25.
//

import UIKit

class SingleViewController: UIViewController {
    
    // MARK: - PROPERTIES
    let initialView = UIView()
    let titleLabel = UILabel()
    let nameInCardLabel = UILabel()
    let imageView = UIImageView()
    let cardView = UIView()
    let descriptionLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /// 1. Vista que usaremos como la vista principal del controlador.
        initialView.backgroundColor = .white /// Establecemos el color de fondo de la vista

        /// 2. Label que muestra "Jair was here".
        titleLabel.frame = CGRect(x: 80, y: 16, width: 272, height: 40)
        /// Establecemos su posición y tamaño con un rectángulo (x, y, ancho, alto).
        titleLabel.text = "Jair was here" /// El texto que se mostrará en la etiqueta.
        titleLabel.textColor = .black /// Cambiamos el color del texto a negro.
        titleLabel.font = UIFont.systemFont(ofSize: 32, weight: .bold)
        
        /// 3. Establecemos su posición y tamaño con un rectángulo (x, y, ancho, alto) del bael en la tarjeta con "Jair Ramírez-Gaston"
        nameInCardLabel.frame = CGRect(x: 20, y: 20, width: 170, height:  20)
        nameInCardLabel.text = "Jair Ramírez Gaston"
        nameInCardLabel.textColor = .white
        
        /// 4. Agregeado del componente de imagen con su imagen respectiva ios11
        imageView.frame = CGRect(x: 0, y: 0, width: 340, height: 200)
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "ios11")
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 20
        
        /// 5. Creamos otra vista con las mismas dimensiones que la vista con imagen
        cardView.frame = CGRect(x: 25, y: 250, width: 340, height: 200)
        // Posicionamos la vista y le damos un tamaño.
        cardView.backgroundColor = .white // Le damos un color de fondo rojo.
        cardView.layer.cornerRadius = 25
        cardView.layer.shadowOpacity = 0.9
        cardView.layer.shadowColor = .init(gray: 0.65, alpha: 1.0)
        cardView.layer.shadowOffset = CGSize(width: 0 , height: 10)

        /// 6. Agregamos las sub-vistas
        initialView.addSubview(titleLabel) /// Agregamos el label a la vista principal.
        initialView.addSubview(cardView) ///Agregamos la tarjeta a la vista principal.
        cardView.addSubview(imageView) /// Agregamos la vista de imagen con su imagen en la tarjeta
        cardView.addSubview(nameInCardLabel) /// Agregamos  el nombre de la tarjeta en la tarjeta
        
        /// 7. Configuración de  descripciónLabel
        descriptionLabel.frame = CGRect(x: 0, y: 270, width: 350, height: 100)
        descriptionLabel.layer.cornerRadius = 25
        descriptionLabel.text = "Aquí tienes tu tarjeta de crédito que ahora será servirá para realizar tus compras."
        descriptionLabel.textAlignment = .left
        descriptionLabel.backgroundColor = .white
        descriptionLabel.textColor = .black
        descriptionLabel.numberOfLines = 10
        
        cardView.addSubview(descriptionLabel)
        
        /// 8. Finalmente, configuramos la vista principal del controlador como la nueva vista inicial.
        self.view = initialView
        
        /// 9.  Agregando animación
        let animator = UIViewPropertyAnimator(duration: 1, dampingRatio: 5) {
            self.cardView.frame = CGRect(x: 20, y: 60, width: 340, height: 100)
            self.titleLabel.frame = CGRect(x: 44, y: 270, width: 200, height: 40)
//            self.cardView.layer.cornerRadius = 0
//            self.imageView.layer.cornerRadius = 0
            
        }
        
        /// 10.  Inicio de animación
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
        // No es ne cesario para esta vista
    }
}

#Preview {
    SingleViewControllerPreview()
}

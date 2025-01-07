#  NOTAS


🔹 El TapGesture lo puedes usar dentro de un TableViewController e incluye doble toque o multiples toques
📑 El document Outlines es donde se encuentra tu jerarquia de vista por así decirlo.
🔲 Un TableViewController tiene PrototypeCells, para removerlas hacer click en el TableView y coloca Prototype en cero.
📜 Dentro del TableViewController ya se tiene un ScrollView.
🔹 Recomendación siempre empezar después de haber creado un UILabel, UIImageView, ... con el uso de frame
    
    Ejemplo: 
    
    cardView.frame = CGRect(x: 25, y: 250, width: 340, height: 200)


#Respecto a la animación:

##Paso 1: Usar la clase UIViewPropertyAnimator

        let animator = UIViewPropertyAnimator(duration: 1, dampingRatio: 5) {
            cardView.frame = CGRect(x: 40, y: 60, width: 340, height: 100)
            titleLabel.frame = CGRect(x: 44, y: 270, width: 200, height: 40)
            
        }
        
        
🔹 Duration

"Determina el tiempo que deseas que dure tu animación. Por lo general, este tiempo oscila entre 0,5 y 2 segundos.
 Para este caso, lo he configurado la duración en 0.5 segundos."

🔹Damping Ratio (relación de amortiguación)

"Las animaciones de primavera y rebote son ampliamente utilizadas en iOS. Para replicarlas, combinaremos la relación de amortiguación con la duración. Lo mejor de esta técnica es que es completamente personalizable. En este caso, ajustemos la relación de amortiguación a 5."

##Paso 2: Dar vida a la animación

   Usa el método startAnimation()
   
           let animator = UIViewPropertyAnimator(duration: 1, dampingRatio: 5) {
            cardView.frame = CGRect(x: 40, y: 60, width: 340, height: 100)
            titleLabel.frame = CGRect(x: 44, y: 270, width: 200, height: 40)
            
        }
        animator.startAnimation()
        

## TIPS

🔹 Usar las propiedads de tipo componentes de vista como:

       // MARK: - PROPERTIES
    let initialView = UIView()
    let titleLabel = UILabel()
    let nameInCardLabel = UILabel()
    let imageView = UIImageView()
    let cardView = UIView()
    
    y colocarlas en el top de la clase
    
   
   
   
Ejemplo:

class SingleViewController: UIViewController {
    
    // MARK: - PROPERTIES
    let initialView = UIView()
    let titleLabel = UILabel()
    let nameInCardLabel = UILabel()
    let imageView = UIImageView()
    let cardView = UIView()
    
    ... Resto de código
    
    
}

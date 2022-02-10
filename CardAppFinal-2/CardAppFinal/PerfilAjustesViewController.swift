



import UIKit
class PerfilAjustesViewController: UIViewController {

    @IBOutlet var historialButton: UIButton!
    @IBOutlet var tutoriaButton: UIButton!
    @IBOutlet var politicasButton: UIButton!
    @IBOutlet var sesionButton: UIButton!
    @IBOutlet var Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func buttonHistorialTapped(_ sender: Any){
        
        if let navCon = storyboard?.instantiateViewController(identifier: "RegisterIdentifier") as? RegisterViewController{
            
            
            navCon.modalPresentationStyle = .fullScreen
            navCon.modalTransitionStyle = .flipHorizontal
            
            present(navCon, animated: true, completion: nil)
           
          
    
        }
    }
    
    @IBAction func buttonTutorialTapped(_ sender: Any){
        
        if let navCon = storyboard?.instantiateViewController(identifier: "RegisterIdentifier") as? RegisterViewController{
            
            
            navCon.modalPresentationStyle = .fullScreen
            navCon.modalTransitionStyle = .flipHorizontal
            
            present(navCon, animated: true, completion: nil)
           
          
    
        }
    }
    
    @IBAction func buttonPoliticasTapped(_ sender: Any){
        
        if let navCon = storyboard?.instantiateViewController(identifier: "RegisterIdentifier") as? RegisterViewController{
            
            
            navCon.modalPresentationStyle = .fullScreen
            navCon.modalTransitionStyle = .flipHorizontal
            
            present(navCon, animated: true, completion: nil)
           
          
    
        }
    }
    
    @IBAction func buttonSesionTapped(_ sender: Any){
        
        if let navCon = storyboard?.instantiateViewController(identifier: "RegisterIdentifier") as? RegisterViewController{
            
            
            navCon.modalPresentationStyle = .fullScreen
            navCon.modalTransitionStyle = .flipHorizontal
            
            present(navCon, animated: true, completion: nil)
           
          
    
        }
    }
    
    
}


import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButton.layer.cornerRadius = 20
        
        
    }

    @IBAction func registerButtonTapped(_ sender: Any) {
        
        if let navCon = storyboard?.instantiateViewController(identifier: "RegisterIdentifier") as? RegisterViewController{
            
            
            navCon.modalPresentationStyle = .fullScreen
            navCon.modalTransitionStyle = .flipHorizontal
            
            present(navCon, animated: true, completion: nil)
           
          
    
        }
   }
    
    @IBAction func loginButtonTapped( sender: Any){
        
        if let navCon = storyboard?.instantiateViewController(identifier: "TapBarIdentifier") as? UITabBarController{
            
            
            navCon.modalPresentationStyle = .fullScreen
            navCon.modalTransitionStyle = .crossDissolve
            
            present(navCon, animated: true, completion: nil)
            //navigationController?.pushViewController(navCon, animated: true)
           
          
    
        }
    
    }
}

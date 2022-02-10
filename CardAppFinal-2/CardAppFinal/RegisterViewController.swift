import UIKit

class RegisterViewController: UIViewController {

    
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPassTextField: UITextField!
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
      
        
        
    }

    @IBAction func loginButtonTapped(_ sender: Any) {
        if let navCon = storyboard?.instantiateViewController(identifier: "LoginIdentifier") as? LoginViewController{
            
            
            navCon.modalPresentationStyle = .fullScreen
            navCon.modalTransitionStyle = .flipHorizontal
            
            present(navCon, animated: true, completion: nil)
           
          
    
        }
    
  }
    
    @IBAction func registerButtonTapped(_ sender: Any) {
        if let navCon = storyboard?.instantiateViewController(identifier: "TapBarIdentifier") as? UITabBarController{
            
            
            navCon.modalPresentationStyle = .fullScreen
            navCon.modalTransitionStyle = .crossDissolve
            
            present(navCon, animated: true, completion: nil)
            //navigationController?.pushViewController(navCon, animated: true)
           
            
            
          
    
        }
    
  }
    
    

}

import UIKit

class SearchViewController: UIViewController {
    
    
    @IBOutlet weak var imageLogo: UIImageView!
    
    @IBOutlet weak var nameSegmentedController: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameSegmentedController.apportionsSegmentWidthsByContent.description
        
    }
    
    
    
    
    @IBAction func segmentedControlChanged(_ sender: UISegmentedControl) {
        
        switch nameSegmentedController.selectedSegmentIndex {
        case 0:
            imageLogo.image = UIImage(named: "Pokémon.svg")
        case 1:
            imageLogo.image = UIImage(named: "Magic-logo.svg")
        case 2:
            imageLogo.image = UIImage(named: "yu-gi-oh!.png")
        default:
            imageLogo.image = nil
        }
        
    }
    
    


}

//
//  UpLoadCard1ViewControllar.swift
//  CardAppFinal
//
//  Created by APPS2T on 7/2/22.
//

import UIKit

class UpCard1ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    @IBOutlet weak var imagenLogo: UIImageView!
    
    @IBOutlet weak var brandsName: UIPickerView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        brandsName.delegate = self
        brandsName.dataSource = self
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return brands.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return brands[row].name
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        imagenLogo.image = UIImage(named: brands[row].logo)
     
    }
    
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        let attributedString = NSAttributedString(string: brands[row].name, attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
            return attributedString
        }
    
    struct Brand{
        var name: String
        var logo: String
    }
    
    let brands: [Brand] = [
        Brand(name: "Magic", logo: "Magic-logo.svg"),
        Brand(name: "Pokémon", logo: "Pokémon.svg"),
        Brand(name: "Yu-gi-oh!", logo: "yu-gi-oh!.png")
    ]
    
  
    @IBAction func VenderCartaButton(_ sender: Any) {
       /* let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let controller = storyBoard.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        let navigation = UINavigationController(rootViewController: controller)
        self.view.addSubview(navigation.view)
        self.addChild(navigation)
        navigation.didMove(toParent: self)
 */
    }
}

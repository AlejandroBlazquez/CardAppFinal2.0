//
//  PerfilViewController.swift
//  CardAppProyect
//
//  Created by APPS2T on 2/2/22.
//

import UIKit

class PerfilViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
   
    @IBOutlet var collectionView: UICollectionView!
    @IBOutlet var buttonEditar: UIButton!
    @IBOutlet var buttonAjustes: UIButton!
    var card: Carta?
    
    
    //Cambiar de juegos 
    var deck1: [Carta] = []
    var deck2: [Carta] = []
    var deck3: [Carta] = []
    
    var collectionDeck: [Carta] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        
        collectionDeck = MockData.shared.card
        collectionView.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return collectionDeck.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FoodCellId", for: indexPath) as? CardCell {
            cell.card = collectionDeck[indexPath.row]
            return cell
        }
        return UICollectionViewCell()
    }
    

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let screenSize = view.bounds
        let screenWidth: CGFloat = (screenSize.width - 12*2) - 80
        let itemWidth = screenWidth / 3.0
        let itemSize = CGSize(width: itemWidth, height: itemWidth * 350 / 240 )
        print("Returning item size: \(itemSize)")
        return itemSize
    }
    

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }
    
    /*@IBAction func buttonEditarTapped(_ sender: Any){
        
        if let navCon = storyboard?.instantiateViewController(identifier: "RegisterIdentifier") as? RegisterViewController{
            
            
            navCon.modalPresentationStyle = .fullScreen
            navCon.modalTransitionStyle = .flipHorizontal
            
            present(navCon, animated: true, completion: nil)
           
          
    
        }
    }
    
    @IBAction func buttonAjustesTapped(_ sender: Any){
        
        if let navCon = storyboard?.instantiateViewController(identifier: "RegisterIdentifier") as? RegisterViewController{
            
            
            navCon.modalPresentationStyle = .fullScreen
            navCon.modalTransitionStyle = .flipHorizontal
            
            present(navCon, animated: true, completion: nil)
           
          
    
        }
    }*/
}

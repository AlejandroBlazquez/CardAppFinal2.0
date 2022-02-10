import UIKit

class CardCell:UICollectionViewCell{
    
    var card: Carta?{
        didSet { renderUI() }
    }
    
    @IBOutlet var name: UILabel!
    @IBOutlet var price: UILabel!
    @IBOutlet var imageURL: UIImageView!
    @IBOutlet var button: UIButton!
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    private func renderUI(){
        guard let card = card else { return }
    
        name.text = card.name
        price.text = "$\(card.price)"
        imageURL.image = UIImage(named: card.imageURL)
        
    }
}


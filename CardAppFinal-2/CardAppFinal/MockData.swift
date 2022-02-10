import Foundation

class MockData {
    
    static let shared = MockData()

    private init() {
        card = loadCard()
    }
    
    var card: [Carta] = []
    
   

    private func loadCard() -> [Carta] {
        let filename = "Cards.json"
        var data: Data
        
        
        guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
                fatalError("Couldn't find \(filename) in main bundle.")
        }
            
        do {
                data = try Data(contentsOf: file)
        } catch {
                fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
        }
        
        
        do {
            let decoder = JSONDecoder()
            return try decoder.decode([Carta].self, from: data)
        } catch {
            fatalError("Couldn't parse \(filename) as \(Carta.self):\n\(error)")
        }
        
    }
    
}

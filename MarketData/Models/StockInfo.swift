import Foundation

public struct StockInfo: Identifiable, Codable {
    
    public var id: String { symbol }
    public var name: String?
    public var symbol: String
    public var imageURL: String?
    public var priceInfo: PriceInfo?
    
    
    
}

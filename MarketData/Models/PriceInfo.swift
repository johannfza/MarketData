import Foundation

public struct PriceInfo: Codable {
    
    public var symbol: String
    public var tradePrice: Amount
    public var actualChange: Amount
    public var percentageChange: Decimal
//    public var status: InstrumentStatus
    
    public func profitAndLossString() -> String {
        var prefix = ""
        if actualChange.value != 0.0 {
            if actualChange.value > 0.0 {
                prefix = "+"
            }
        }
        
        return "\(prefix)\(actualChange.getValue() as String) (\(PriceInfo.valueFormatter.string(from: NSDecimalNumber(decimal: percentageChange)) ?? "")%)"
        
    }
    
    private static var valueFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.maximumFractionDigits = 2
        return formatter
    }()

}

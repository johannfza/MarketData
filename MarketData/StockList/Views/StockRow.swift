//
//  StockRow.swift
//  MarketData
//
//  Created by Johann Fong  on 4/8/21.
//

import SwiftUI

struct StockRow: View {
    
    public var stock: StockInfo
    
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(stock.name)
                    .font(.headline)
                Text(stock.symbol)
                    .font(.subheadline)
            }
            Spacer()
            VStack(alignment: .trailing) {
                Text(((stock.priceInfo.tradePrice.getValue()) as String))
                    .font(.headline)
                Text(stock.priceInfo.profitAndLossString())
                    .font(.caption)
                    .foregroundColor(stock.priceInfo.actualChange.value >= 0.00 ? Color.green : Color.red)
            }
        }
        .padding()
    }
}

struct StockRow_Previews: PreviewProvider {
    
    static let tradePrice = Amount(value: 650.00, currency: .usd)
    static let actualChange = Amount(value: 0.00, currency: .usd)
    static let price = PriceInfo(symbol: "TSLA", tradePrice: tradePrice, actualChange: actualChange, percentageChange: 10.00)
    static let stock = StockInfo(name: "TESLA", symbol: "TSLA", imageURL: nil, priceInfo: price)
    
    static var previews: some View {
        List {
            StockRow(stock: stock)
        }
    }
}

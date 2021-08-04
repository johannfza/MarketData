//
//  StockRow.swift
//  MarketData
//
//  Created by Johann Fong  on 4/8/21.
//

import SwiftUI

struct StockRowView: View {
    
    public var stock: StockInfo
    
    
    var body: some View {
        HStack {
            RoundedRectangleImageView(urlString: stock.imageURL ?? "")
            VStack(alignment: .leading) {
                Text(stock.name ?? "")
                    .font(.headline)
                Text(stock.symbol)
                    .font(.subheadline)
            }
            Spacer()
            VStack(alignment: .trailing) {
                Text(((stock.priceInfo?.tradePrice.getValue() ?? "") as String))
                    .font(.headline)
                Text(stock.priceInfo?.profitAndLossString() ?? "")
                    .font(.caption)
                    .foregroundColor(stock.priceInfo?.actualChange.value ?? 0.00 >= 0.00 ? Color.green : Color.red)
            }
        }
        .padding()
    }
}

struct StockRowView_Previews: PreviewProvider {
    
    static let tradePrice = Amount(value: 650.00, currency: .usd)
    static let actualChange = Amount(value: 0.00, currency: .usd)
    static let price = PriceInfo(symbol: "TSLA", tradePrice: tradePrice, actualChange: actualChange, percentageChange: 10.00)
    static let stock = StockInfo(name: "TESLA", symbol: "TSLA", imageURL: "https://www.google.com/url?sa=i&url=https%3A%2F%2Flogo-logos.com%2Felon-musk-tesla-logo-1719.html&psig=AOvVaw0J-hw6-vF954KtbKoMV-kA&ust=1628179436824000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCLjw7pvfl_ICFQAAAAAdAAAAABAO", priceInfo: price)
    
    static var previews: some View {
        List {
            StockRowView(stock: stock)
        }
    }
}

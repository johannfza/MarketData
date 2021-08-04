//
//  StocksDetailsView.swift
//  MarketData
//
//  Created by Johann Fong  on 5/8/21.
//

import SwiftUI

struct StockDetailsView: View {
    
    var stock: StockInfoModel
    
    var body: some View {
        VStack {
            RoundedRectangleImageView(urlString: stock.imageURL ?? "")
            Text(stock.name)
            Text(stock.symbol)
        }
        .navigationTitle(stock.symbol)
    }
}

struct StocksDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        StockDetailsView(stock: StocksViewModel(stocksService: MockStocksDataService()).stocks[0])
    }
}

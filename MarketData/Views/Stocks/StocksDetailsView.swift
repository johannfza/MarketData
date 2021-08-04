//
//  StocksDetailsView.swift
//  MarketData
//
//  Created by Johann Fong  on 5/8/21.
//

import SwiftUI

struct StocksDetailsView: View {
    
    var stock: StockInfoModel
    
    var body: some View {
        VStack {
            RoundedRectangleImageView(urlString: stock.imageURL ?? "")
            Text(stock.symbol)
                .navigationTitle(stock.symbol)
        }
    }
}

struct StocksDetailsView_Previews: PreviewProvider {
    
    
    static var previews: some View {
        StocksDetailsView(stock: StocksViewModel().stocks[0])
    }
}

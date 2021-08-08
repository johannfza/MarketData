//
//  StockDetailsView.swift
//  MarketData
//
//  Created by Johann Fong  on 5/8/21.
//

import SwiftUI

struct StockDetailsView: View {
    
    public var stock: StockInfoModel
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(stock.name)
                Spacer()
                RoundedRectangleImageView(urlString: stock.imageURL ?? "")
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
            .navigationTitle(stock.symbol)
        }
    }
}

struct StockDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        if let stock = StockListViewModel(stockListService: MockStockListDataService()).stocks?[0] {
            StockDetailsView(stock: stock)
        }
    }
}

//
//  ContentView.swift
//  MarketData
//
//  Created by Johann Fong  on 4/8/21.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var stocksViewModel: StocksViewModel
    
    var body: some View {
        NavigationView {
            if let stocks = stocksViewModel.stocks {
                StockListView(stocks: stocks)
                    .navigationTitle("Top Stocks List")
            } else {
                // TODO: Add loading view
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(StocksViewModel(stocksService: MockStocksDataService()))
    }
}

//
//  ContentView.swift
//  MarketData
//
//  Created by Johann Fong  on 4/8/21.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var vm: StockListViewModel
    
    var body: some View {
        NavigationView {
            if let stocks = vm.stocks {
                StockListView(stocks: stocks)
                    .navigationTitle("Stock List")
            } else {
                ProgressView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView().environmentObject(StockListViewModel(stockListService: MockStockListDataService()))
    }
}

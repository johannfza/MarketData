//
//  ContentView.swift
//  MarketData
//
//  Created by Johann Fong  on 4/8/21.
//

import SwiftUI

struct ContentView: View {
        
    var body: some View {
        NavigationView {
            StockListView()
                .navigationTitle("Top Stocks")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView().environmentObject(StockListViewModel(stockListService: MockStockListDataService()))
    }
}

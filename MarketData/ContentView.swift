//
//  ContentView.swift
//  MarketData
//
//  Created by Johann Fong  on 4/8/21.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var stockService: StockService
    
    var body: some View {
        VStack {
            Text("Stock List")
                .padding()
                .font(.title)
            StockListView(stocks: stockService.stocks)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(StockService())
    }
}

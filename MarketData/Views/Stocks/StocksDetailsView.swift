//
//  StocksDetailsView.swift
//  MarketData
//
//  Created by Johann Fong  on 5/8/21.
//

import SwiftUI

struct StocksDetailsView: View {
    
    var symbol: String
    
    var body: some View {
        Text(symbol)
            .navigationTitle(symbol)
    }
}

struct StocksDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        StocksDetailsView(symbol: "TSLA")
    }
}

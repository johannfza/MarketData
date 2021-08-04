//
//  MarketDataApp.swift
//  MarketData
//
//  Created by Johann Fong  on 4/8/21.
//

import SwiftUI

@main
struct MarketDataApp: App {
    
    @StateObject private var stockService = StockService()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(stockService)
        }
    }
}

//
//  StockListError.swift
//  MarketData
//
//  Created by Johann Fong  on 6/8/21.
//

import Foundation

struct StockListError: Error {
    let code: String
    let message: String
}

//
//  PriceData.swift
//  MarketData
//
//  Created by Johann Fong  on 8/8/21.
//

import Foundation

struct ChartDataRsDTO: Codable {

    var instrumentID: String?
    var compression: Int?
    var dateStart: String?
    var dateEnd: String?
    var data: String?
    
    var stockPriceDataPoints: [StockPriceDataPoint] {
        guard let data = self.data else {
            return [StockPriceDataPoint]()
        }
        let chartDataPointStrings = data.components(separatedBy: "|")
        var chartDataPoints = [StockPriceDataPoint]()
        for string in chartDataPointStrings {
            let data = string.components(separatedBy: ",")
            guard data.count == 6 else {
                preconditionFailure()
            }
            chartDataPoints.append(StockPriceDataPoint(timerstamp: data[0], open: Double(data[1]) ?? 0.0, high: Double(data[2]) ?? 0.0, low: Double(data[3]) ?? 0.0, close: Double(data[4]) ?? 0.0, volume: Double(data[5]) ?? 0.0))
        }
        return chartDataPoints
    }
}



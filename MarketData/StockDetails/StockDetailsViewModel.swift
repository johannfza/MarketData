//
//  StockDetailsViewModel.swift
//  MarketData
//
//  Created by Johann Fong  on 8/8/21.

import Foundation
import Charts

class StockDetailsViewModel: ObservableObject {

    @Published private var dayChartDataRsDTO: ChartDataRsDTO = JsonParser.load("DayChartData.json")
    @Published var dayChartDataEntries: [ChartDataEntry]? = nil
    
    init() {
        populateChartData()
    }
    
    func populateChartData() {
        dayChartDataEntries = dayChartDataRsDTO.stockPriceDataPoints.enumerated().map { index, data in
            return ChartDataEntry(x: Double(index), y: data.close , data: data)
        }
    }
    
//    func getChartData(for type: ChartType) -> [ChartDataEntry] {
//        switch type {
//        case .day:
//            return dayChartDataRsDTO.stockPriceDataPoints.enumerated().map { index, data in
//                return ChartDataEntry(x: Double(index), y: data.close , data: data)
//            }
//        default:
//            fatalError()
//        }
//    }
}


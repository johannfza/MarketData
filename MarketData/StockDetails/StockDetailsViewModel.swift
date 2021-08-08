//
//  StockDetailsViewModel.swift
//  MarketData
//
//  Created by Johann Fong  on 8/8/21.

import Foundation
import Charts

class StockDetailsViewModel: ObservableObject {

    // MOCK Data
    private var day1minChartRsDTO: ChartDataRsDTO = JsonParser.load("Day1minChart.json")
    private var day5minChartRsDTO: ChartDataRsDTO = JsonParser.load("Day5minChart.json")
    
    @Published var chartData = [POCChartType : [ChartDataEntry]]()
    @Published var selectedChartType: POCChartType = .day1min
    
    let stock: StockInfoModel
    
    init(stock: StockInfoModel) {
        self.stock = stock
        populateChartData()
    }
    
    func populateChartData() {
        // Calls api and populates
        chartData[.day1min] = day1minChartRsDTO.stockPriceDataPoints.enumerated().map { index, data in
            return ChartDataEntry(x: Double(index), y: data.close , data: data)
        }
        chartData[.day5min] = day5minChartRsDTO.stockPriceDataPoints.enumerated().map { index, data in
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


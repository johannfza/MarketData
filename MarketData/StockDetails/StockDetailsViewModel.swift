//
//  StockDetailsViewModel.swift
//  MarketData
//
//  Created by Johann Fong  on 8/8/21.

import Foundation

class StockDetailsViewModel: ObservableObject {

    @Published var dayPriceData: [ChartDataPoint] = (JsonParser.load("DayChartData.json") as ChartDataRsDTO).chartDataPoints

}


//
//  SwiftUIView.swift
//  MarketData
//
//  Created by Johann Fong  on 8/8/21.
//

import SwiftUI

struct ChartTypeSelectorView: View {
    
    @Binding var type: POCChartType

    var body: some View {
        HStack {
            Text("Chart Type")
                .font(.headline)
            Spacer()
            Menu(type.rawValue) {
                Button(POCChartType.day1min.rawValue) {
                    type = .day1min
                }
                Button(POCChartType.day5min.rawValue) {
                    type = .day5min
                }
            }
        }
        .padding(10)
    }
}

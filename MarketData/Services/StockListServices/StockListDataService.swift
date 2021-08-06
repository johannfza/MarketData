//
//  File.swift
//  MarketData
//
//  Created by Johann Fong  on 6/8/21.
//

import Foundation

class StockListDataService: StockListService {
    
    let url = URL(string: "http://localhost:8000/StockInfoData.json")!
    
    func getTopStocks(completion: @escaping (Result<[StockInfoModel], Error>) -> Void) {
        let config = URLSessionConfiguration.default
        config.requestCachePolicy = .reloadIgnoringLocalCacheData
        config.urlCache = nil
        let session = URLSession(configuration: config)
        let task = session.dataTask(with: url, completionHandler: { data, response, error in
            guard error == nil else {
                print(">>>>> Error Object: ", String(describing: error))
                return
            }
            guard let data = data else {
                return
            }
            do {
                let decoder = JSONDecoder()
                let stocks: [StockInfoModel] = try decoder.decode([StockInfoModel].self, from: data)
                print(">>>>> Stocks Array: ", String(describing: stocks))
            } catch {
                print(">>>>> Serialization Error: ",  String(describing: error))
            }
        })
        task.resume()
    }
}

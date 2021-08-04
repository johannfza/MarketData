//
//  RoundedRectangleImageView.swift
//  MarketData
//
//  Created by Johann Fong  on 4/8/21.
//

import SwiftUI
import SDWebImageSwiftUI

struct RoundedRectangleImageView: View {
    
    var urlString: String = ""
    
    var body: some View {
        WebImage(url: URL(string: urlString))
            .resizable()
            .placeholder {
                Rectangle().cornerRadius(8).foregroundColor(Color(UIColor.lightGray))
            }
            .indicator(.activity)
            .frame(width: 60, height: 60)
            .clipShape(RoundedRectangle(cornerSize: CGSize(width: 8.0, height: 8.0)))
            .shadow(radius: 5)
            .padding(3)
    }
}

struct RoundedRectangleImageView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            RoundedRectangleImageView()
        }
        .previewLayout(.fixed(width: 100, height: 100))
        
        Group {
            RoundedRectangleImageView(urlString: "https://nokiatech.github.io/heif/content/images/ski_jump_1440x960.heic")
        }
        .previewLayout(.fixed(width: 100, height: 100))
    }
}

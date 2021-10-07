//
//  QuotesScreen.swift
//  QuoteApp
//
//  Created by Steven Zhang on 2021-10-06.
//

import SwiftUI

struct QuotesScreen: View {
    
    var body: some View {
        
        List {
            ForEach(Quote.dummyData, id: \.anime) { item in
                VStack(alignment: .leading,
                       spacing: 8) {
                    HStack {
                        Image(systemName: "tv")
                            .font(.system(size: 12, weight: .black))
                        Text(item.anime)
                    }
                    
                    Text(makeAttributedString(title: "Character", label: item.character))
                    Text(makeAttributedString(title: "Quotes", label: item.quote))
                        .lineLimit(2)
                }
                .padding()
                .foregroundColor(.black)
            }
        }
        
    }
}

struct QuotesScreen_Previews: PreviewProvider {
    static var previews: some View {
        QuotesScreen()
    }
}

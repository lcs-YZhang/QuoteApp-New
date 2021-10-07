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
                QuoteView(item: item)
                
            }
        }
    }
}

struct QuotesScreen_Previews: PreviewProvider {
    static var previews: some View {
        QuotesScreen()
    }
}

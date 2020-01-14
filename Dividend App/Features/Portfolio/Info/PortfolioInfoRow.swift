//
//  PortfolioInfoRow.swift
//  Dividend App
//
//  Created by Kevin Li on 1/6/20.
//  Copyright © 2020 Kevin Li. All rights reserved.
//

import SwiftUI

struct PortfolioInfoRow: View {
    let stock: PortfolioStock
    let date: Date
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(stock.ticker)
                    .foregroundColor(Color("textColor"))
                    .font(.headline)
                    .fontWeight(.heavy)
                Text(stock.fullName)
                    .foregroundColor(Color("textColor"))
                    .font(.caption)
                    .lineLimit(1)
            }
            
            Spacer()
            
            VStack {
                HStack(spacing: 0) {
                    Spacer()
                    Text("Starting dividend: ")
                        .foregroundColor(Color("textColor"))
                        .font(.footnote)
                        .lineLimit(1)
                    Text("$\(stock.startingDividend, specifier: "%.2f")")
                        .foregroundColor(Color("textColor"))
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .lineLimit(1)
                }
                HStack(spacing: 0) {
                    Spacer()
                    Text("Next dividend: ")
                        .foregroundColor(Color("textColor"))
                        .font(.footnote)
                        .lineLimit(1)
                    Text(date.mediumStyle)
                        .foregroundColor(Color("textColor"))
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .lineLimit(1)
                }
            }
        }
        .padding(.leading, 8)
        .padding(.trailing, 8)
    }
}


struct PortfolioInfoRow_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioInfoRow(stock: .mock, date: Date())
    }
}

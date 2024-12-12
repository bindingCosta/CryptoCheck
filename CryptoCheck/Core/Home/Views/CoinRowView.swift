//
//  CoinRowView.swift
//  CryptoCheck
//
//  Created by Marcelo Costa on 12/12/24.
//

import SwiftUI
import Kingfisher

struct CoinRowView: View {
    let coin: Coin
    
    var body: some View {
        HStack {
//MARK: Market Cap Rank
            Text("\(coin.marketCapRank ?? 1)")
                .font(.caption)
                .foregroundStyle(.gray)
            
            KFImage(URL(string: coin.image))
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
                .foregroundStyle(.orange)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(coin.name)
                    .font(.headline)
                    .fontWeight(.semibold)
                    .padding(.leading, 4)
                
                Text(coin.symbol.uppercased())
                    .font(.caption)
                    .padding(.leading, 6)
            }
            .padding(.leading, 2 )
            
             Spacer()
            
            VStack(alignment: .trailing, spacing: 4) {
                Text(coin.currentPrice.toCurrency())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .padding(.leading, 4)
                
                Text( coin.priceChangePercentage24H.toPercentageString())
                    .font(.caption)
                    .padding(.leading, 6)
                    .foregroundStyle(coin.priceChangePercentage24H > 0 ? .green : .red)
            }
            .padding(.leading, 2 )
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}

//#Preview {
//    CoinRowView(coin: coin)
//}

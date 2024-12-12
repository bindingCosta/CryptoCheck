//
//  HomeView.swift
//  CryptoCheck
//
//  Created by Marcelo Costa on 10/12/24.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                
                TopMoversView(viewModel: viewModel)
                
                Divider()
                
                AllCoinsView(viewModel: viewModel)
                
            }
            .navigationTitle("Live Prices")
        }
    }
}

#Preview {
    HomeView()
}

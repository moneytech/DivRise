//
//  SearchStockView.swift
//  Dividend App
//
//  Created by Kevin Li on 12/24/19.
//  Copyright © 2019 Kevin Li. All rights reserved.
//

// Credits: https://stackoverflow.com/questions/56490963/how-to-display-a-search-bar-with-swiftui?rq=1

import SwiftUI

struct SearchStockView: View {
    @State private var showCancelButton: Bool = false
    
    @Binding var query: String
    @Binding var showingAlert: Bool {
        didSet {
            
        }
    }
    @Binding var selectedStock: SearchStock?
    
    let searchedStocks: [SearchStock]
    let onCommit: () -> Void
    
    var body: some View {
        let binding = Binding<String>(
            get: { self.query }, 
            set: { self.query = $0
                self.onCommit()
        }
        )
        
        return VStack(alignment: .leading) {
            HStack {
                HStack {
                    Image(systemName: "magnifyingglass")
                    
                    TextField("Search stocks, funds...", text: binding, onCommit: onCommit)
                        .foregroundColor(.primary)
                    
                    Button(action: {
                        self.query = ""
                        self.onCommit()
                    }) {
                        Image(systemName: "xmark.circle.fill").opacity(query == "" ? 0 : 1)
                    }
                }
                .padding(EdgeInsets(top: 8, leading: 6, bottom: 8, trailing: 6))
                .foregroundColor(.secondary)
                .background(Color(.secondarySystemBackground))
                .cornerRadius(10.0)
                
                if showCancelButton  {
                    Button("Cancel") {
                        UIApplication.shared.endEditing(true) // this must be placed before the other commands here
                        self.query = ""
                        self.showCancelButton = false
                    }
                    .foregroundColor(Color(.systemBlue))
                }
            }
            .padding(.horizontal)
            
            List(searchedStocks, id: \.self) { stock in
                Button(action: {
                    if stock.dividend != "" {
                        self.selectedStock = stock
                        self.showingAlert = true
                    }
                }) {
                    SearchStockRow(stock: stock)
                }
            }
        .resignKeyboardOnDragGesture()
        }
    }
}


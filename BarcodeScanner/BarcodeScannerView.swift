//
//  BarcodeScannerView.swift
//  BarcodeScanner
//
//  Created by Kumani Kidd on 17/10/2023.
//

import SwiftUI

struct BarcodeScannerView: View {
    var body: some View {
        NavigationView {
            VStack {
              
                
                Rectangle()
                    .frame(maxWidth: .infinity, maxHeight: 300)
                
                Spacer()
                    .frame( maxHeight: 85)
                
                HStack{
                    Label("Scanned Barcode", systemImage: "barcode.viewfinder")
                        .fontWeight(.light)
                        .font(.system(size: 20))
                }
                .frame(width: 400, height: 50)
                
                Text("Not Yet Scanned")
                    .fontWeight(.bold)
                    .font(.title)
                    .foregroundStyle(.red)
                    .padding()
                
               
            }
            .navigationTitle("Barcode Scanner")
            
        }
    }
}

#Preview {
    BarcodeScannerView()
}

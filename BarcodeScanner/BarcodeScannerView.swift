//
//  BarcodeScannerView.swift
//  BarcodeScanner
//
//  Created by Kumani Kidd on 17/10/2023.
//

import SwiftUI

struct BarcodeScannerView: View {
    
    @State private var scannedCode = ""
    
    var body: some View {
        NavigationView {
            VStack {
              
                
                ScannerView(scannedCode: $scannedCode)
                    .frame(maxWidth: .infinity, maxHeight: 300)
                
                Spacer()
                    .frame( maxHeight: 85)
                
                HStack{
                    Label("Scanned Barcode", systemImage: "barcode.viewfinder")
                        .fontWeight(.light)
                        .font(.system(size: 20))
                }
                .frame(width: 400, height: 50)
                
                Text(scannedCode.isEmpty ? "Not Yet Scanned" : scannedCode)
                    .fontWeight(.bold)
                    .font(.title)
                    .foregroundStyle(scannedCode.isEmpty ? .red : .green)
                    .padding()
                
               
            }
            .navigationTitle("Barcode Scanner")
            
        }
    }
}

#Preview {
    BarcodeScannerView()
}

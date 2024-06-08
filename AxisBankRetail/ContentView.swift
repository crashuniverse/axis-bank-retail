//
//  ContentView.swift
//  AxisBankRetail
//
//  Created by Priya Ranjan Singh on 08/06/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 32) {
            Text("Dashboard")
                .font(.system(size: 24))
                .bold()

            VStack(alignment: .leading, spacing: 8) {
                VStack(alignment: .leading) {
                    Text("Welcome John")
                        .fontWeight(.thin)
                        .font(.system(size: 16))
                }
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("Accounts")
                        .fontWeight(.bold)
                    
                    VStack(alignment: .leading) {
                        Text("7612 1324 2132 768")
                        Text("Savings bank account")
                        Text("Balance: Rs. 1,32,000")
                        Link(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=URL@*/URL(string: "https://www.apple.com")!/*@END_MENU_TOKEN@*/) {
                            Text("View transactions")
                        }
                    }
                }
            }
        }
        .frame(
            maxWidth: .infinity,
            maxHeight: .infinity,
            alignment: .topLeading
        )
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

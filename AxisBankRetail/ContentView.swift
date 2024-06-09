//
//  ContentView.swift
//  AxisBankRetail
//
//  Created by Priya Ranjan Singh on 08/06/24.
//

import SwiftUI

struct ContentView: View {
    @State private var accountNumber = "7612 1324 2132 768";
    @State private var accountType = "Savings bank account";
    @State private var accountBalance = "1,32,000";
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 16) {
                Text("Welcome John")
                    .fontWeight(.thin)
                    .font(.system(size: 24))
                VStack(alignment: .leading, spacing: 8) {
                    Text("Accounts")
                        .fontWeight(.bold)
                    VStack(alignment: .leading) {
                        Text(accountNumber)
                        Text(accountType)
                        Text("Balance: Rs. " + accountBalance)
                    }
                    NavigationLink(destination: AccountDetail()) {
                        Text("View account details")
                    }
                }
            }
            .frame(
                maxWidth: .infinity,
                maxHeight: .infinity,
                alignment: .topLeading
            )
            .padding()
            .navigationTitle("Dashboard")
        }
    }
}

struct AccountDetail: View {
    @State private var accountNumber = "7612 1324 2132 768";
    @State private var accountType = "Savings bank account";
    @State private var accountBalance = "1,32,000";

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(accountType)
                .fontWeight(.bold)
            VStack(alignment: .leading) {
                Text("Account No. " + accountNumber)
                Text("Balance: Rs. " + accountBalance)
            }
            Spacer()
                .frame(height: 16)
            Text("Transactions")
                .fontWeight(.bold)
            List() {
                Text("May 27 - Debit " + "Rs 30,000.00")
                Text("May 18 - Debit " + "Rs 500.00")
                Text("May 12 - Debit " + "Rs 50,000.00")
            }
            .padding(0)
            .scrollContentBackground(.hidden)
            .frame(height: 140)
            .listStyle(.plain)
            
            NavigationLink(destination: EmptyView()) {
                Text("View all transactions")
            }
        }
        .navigationTitle("Account Details")
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

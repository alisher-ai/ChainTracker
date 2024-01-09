//
//  AddChainView.swift
//  ChainTracker
//
//  Created by Alisher Abdulkhaev on 2024/01/10.
//

import Foundation
import SwiftUI

struct AddChainView: View {
    @State private var newChainName = ""
    @Environment(\.dismiss) var dismiss

    var body: some View {
        NavigationView {
            Form {
                TextField("Enter Chain Name", text: $newChainName)
                    .autocapitalization(.words)
                    .textFieldStyle(RoundedBorderTextFieldStyle())

                Button(action: addNewChain) {
                    Text("Add Chain")
                }
                .disabled(newChainName.isEmpty)
            }
            .navigationTitle("New Chain")
        }
    }

    private func addNewChain() {
        // Logic to handle the addition of a new chain
        // Example: Save to an array, UserDefaults, or a database
        print("New Chain Added: \(newChainName)")
        newChainName = "" // Reset the text field
        dismiss()
    }
}

struct AddChainView_Previews: PreviewProvider {
    static var previews: some View {
        AddChainView()
    }
}

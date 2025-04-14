//
//  AddIncomeView.swift
//  expense-tracker-mvvm
//
//  Created by Victor Hugo Martins on 13/04/25.
//

import SwiftUI

struct AddIncomeView: View {
    @State private var titleIncome: String = ""
    @State private var descriptionIncome: String = ""
    @State private var valueIncome: Double = 0
    @FocusState private var isFocused: AddIncomeFocus?
    @State var viewModel=IncomeItemViewModel()
    @Environment(\.modelContext) var modelContext
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationStack{
            VStack{
                Text("Title")
                TextField(
                    "Title",
                    text: $titleIncome
                )
                .padding()
                .textFieldStyle(.roundedBorder)
                .focused($isFocused, equals: .title)
                .onSubmit {
                    isFocused = .description
                }
                
                Text("Description")
                TextField(
                    "Description",
                    text: $descriptionIncome
                )
                .padding()
                .textFieldStyle(.roundedBorder)
                .focused($isFocused, equals: .description)
                .onSubmit {
                    isFocused = .incomevalue
                }
                
                Text("Income Value")
                TextField(
                    "Income Value",
                    value: $valueIncome,
                    formatter: NumberFormatter()
                )
                .padding()
                .textFieldStyle(.roundedBorder)
                .focused($isFocused, equals: .incomevalue)
                
                Button("Add", systemImage: "arrow.up"){
                    dismiss()
                    viewModel.addItemViewModel()
                }
            }
            .onAppear{
                isFocused = .title
                viewModel.context = modelContext
            }
        }
        
    }
    enum AddIncomeFocus:Hashable{
        case title,description,incomevalue
    }
}

#Preview {
    AddIncomeView()
}

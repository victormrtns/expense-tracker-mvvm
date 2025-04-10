//
//  ContentView.swift
//  expense-tracker-mvvm
//
//  Created by Victor Hugo Martins on 04/04/25.
//

import SwiftUI
import SwiftData

struct IncomeView: View {
    @Environment(\.modelContext) var modelContext
    @State var viewModel=IncomeItemViewModel()
    var body: some View {
        Button("Add",action: viewModel.addItemViewModel).padding()
        VStack{
            List{
                ForEach(viewModel.incomeItems){incomeItem in
                    IncomeItemView(incomeItem:incomeItem)
                }
                .onDelete(perform:viewModel.deleteItemViewModel)
                .onMove(perform: viewModel.moveItem)
                
            }
            .toolbar {
                EditButton()
            }
            .onAppear{
                viewModel.context = modelContext
                viewModel.fetchItems()
            }
        }
    }
    
    
}


#Preview {
    IncomeView()
}

//
//  ContentView.swift
//  expense-tracker-mvvm
//
//  Created by Victor Hugo Martins on 04/04/25.
//

import SwiftUI


struct IncomeView: View {
    @StateObject private var viewModel: IncomeItemViewModel = IncomeItemViewModel()
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
        }
    }
    
    
}


#Preview {
    IncomeView()
}

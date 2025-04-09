//
//  IncomeItemView.swift
//  expense-tracker-mvvm
//
//  Created by Victor Hugo Martins on 04/04/25.
//

import SwiftUI

struct IncomeItemView: View {
    var incomeItem:IncomeItem
    var viewModel = IncomeItemViewModel()
    var body: some View {
        HStack{
        Text(incomeItem.name).font(.title)
            .padding()
        Spacer()
            VStack(alignment:.leading){
                if let description = incomeItem.descriptionitem {
                    Text(description.capitalized)
                }
                Text(incomeItem.value,format: FloatingPointFormatStyle()).font(.title)
                
            }.padding()
        }
    }
}
            

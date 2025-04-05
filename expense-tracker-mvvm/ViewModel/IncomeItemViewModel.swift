//
//  IncomeItemViewModel.swift
//  expense-tracker-mvvm
//
//  Created by Victor Hugo Martins on 04/04/25.
//

import Foundation


class IncomeItemViewModel:ObservableObject{
    @Published var incomeItems: [IncomeItem] = [
        IncomeItem(name: "Salary",description:"INCOME FROM SALARY", value: 30000000),
        IncomeItem(name: "Freela",description:"wherever", value: 3000000),
        IncomeItem(name: "Robbing",description:"I just enjoy this", value: 3000000),
        IncomeItem(name: "Robbing1", value: 3000000)
    ]
    
    func addItemViewModel() {
        incomeItems.append(IncomeItem(name: "New Item",description:"aa", value: 10.00))
    }
    
    func deleteItemViewModel(at offsets: IndexSet){
        incomeItems.remove(atOffsets: offsets)
    }
    
    func moveItem(from source: IndexSet, to destination: Int) {
        incomeItems.move(fromOffsets: source, toOffset: destination)
    }
}

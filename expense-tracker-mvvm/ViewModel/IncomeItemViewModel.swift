//
//  IncomeItemViewModel.swift
//  expense-tracker-mvvm
//
//  Created by Victor Hugo Martins on 04/04/25.
//

import Foundation


@Observable class IncomeItemViewModel{
    var incomeItems: [IncomeItem] = [
        IncomeItem(name: "Salary",descriptionitem:"INCOME FROM SALARY", value: 30000000),
        IncomeItem(name: "Freela",descriptionitem:"wherever", value: 3000000),
        IncomeItem(name: "Robbing",descriptionitem:"I just enjoy this", value: 3000000),
        IncomeItem(name: "Robbing1", value: 3000000)
    ]
    
    func addItemViewModel() {
        incomeItems.append(IncomeItem(name: "New Item",descriptionitem:"aa", value: 10.00))
    }
    
    func deleteItemViewModel(at offsets: IndexSet){
        incomeItems.remove(atOffsets: offsets)
    }
    
    func moveItem(from source: IndexSet, to destination: Int) {
        incomeItems.move(fromOffsets: source, toOffset: destination)
    }
}

//
//  IncomeItemViewModel.swift
//  expense-tracker-mvvm
//
//  Created by Victor Hugo Martins on 04/04/25.
//

import Foundation
import SwiftData
import SwiftUI

@Observable class IncomeItemViewModel{
    
    var context: ModelContext?
    
    var incomeItems: [IncomeItem] = [
        IncomeItem(name: "Salary",descriptionitem:"INCOME FROM SALARY", value: 30000000),
        IncomeItem(name: "Freela",descriptionitem:"wherever", value: 3000000),
        IncomeItem(name: "Robbing",descriptionitem:"I just enjoy this", value: 3000000),
        IncomeItem(name: "Robbing1", descriptionitem:"I just enjoy this",value: 3000000)
    ]
    func fetchItems() {
            guard let context else { return }
            do {
                let descriptor = FetchDescriptor<IncomeItem>()
                incomeItems = try context.fetch(descriptor)
            } catch {
                print("Erro ao buscar itens: \(error)")
            }
        }
    
    func addItemViewModel() {		
                let item = IncomeItem(name: "Robbin1g1", value: 3000000)
                context?.insert(item)
                try? context?.save()
                fetchItems()
    }
    
    func deleteItemViewModel(at offsets: IndexSet){
                for index in offsets {
                    context?.delete(incomeItems[index])
                }
        fetchItems()
    }
    
    func moveItem(from source: IndexSet, to destination: Int) {
        incomeItems.move(fromOffsets: source, toOffset: destination)
    }
}

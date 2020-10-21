//
//  DataModel.swift
//  PullToRefresh
//
//  Created by Ginger on 21/10/2020.
//

import Foundation

struct DataModel: Identifiable {
    var id = UUID()
    var itemTitle: String
    
    
}

class DataManager: ObservableObject {
    @Published var dataModel: [DataModel]
    
    init(dataModel: [DataModel]) {
        self.dataModel = dataModel
    }
    
    func addItem() {
        dataModel.append(DataModel(itemTitle: "Note #\(dataModel.count + 1)"))
    }
}

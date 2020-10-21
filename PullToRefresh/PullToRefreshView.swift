//
//  PullToRefreshView.swift
//  PullToRefresh
//
//  Created by Ginger on 21/10/2020.
//

import SwiftUI

struct PullToRefreshView: View {
    @StateObject var manager: DataManager
    
    var body: some View {
        List(manager.dataModel) { note in
            Text(note.itemTitle)
        }
    }
}

struct PullToRefreshView_Previews: PreviewProvider {
    static var previews: some View {
        PullToRefreshView(manager: DataManager(dataModel: [DataModel(itemTitle: "My First Note")]))
    }
}

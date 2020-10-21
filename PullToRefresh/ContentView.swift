//
//  ContentView.swift
//  PullToRefresh
//
//  Created by Ginger on 21/10/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geometry in
            NavigationView {
                RefreshScrollView(width: geometry.size.width, height: geometry.size.height).navigationTitle("I pull every night: App")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

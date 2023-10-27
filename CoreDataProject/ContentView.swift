//
//  ContentView.swift
//  CoreDataProject
//
//  Created by Zach Mommaerts on 10/27/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Section {
                NavigationLink {
                    SelfExplainedView()
                } label: {
                    Text("Self Explained View")
                }
            } header: {
                Text("Day One")
                    .font(.title)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

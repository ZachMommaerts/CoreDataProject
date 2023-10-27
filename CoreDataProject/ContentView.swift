//
//  ContentView.swift
//  CoreDataProject
//
//  Created by Zach Mommaerts on 10/27/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Section {
                    NavigationLink {
                        SelfExplainedView()
                    } label: {
                        Text("Self Explained View")
                    }
                    
                    NavigationLink {
                        NSManagedObjectSubclassesView()
                    } label: {
                        Text("NSManaged Object Subclasses View")
                    }
                    NavigationLink {
                        ConditionalNSManagedObjectContextView()
                    } label: {
                        Text("Conditional NSManaged Object Context View")
                    }
                } header: {
                    Text("Day One")
                        .font(.title)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

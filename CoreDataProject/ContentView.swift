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
                    
                    NavigationLink {
                        CoreDataObjectConstraintsView()
                    } label: {
                        Text("Core Data Object Constraint View")
                    }
                } header: {
                    Text("Day One")
                        .font(.title)
                }
                
                Section {
                    NavigationLink {
                        NSPredicateFetchRequestView()
                    } label: {
                        Text("NSPredicate Fetch Request View")
                    }
                    
                    NavigationLink {
                        DynamicFilterFetchRequestView()
                    } label: {
                        Text("Dynamic Filter Fetch Request View")
                    }
                    
                    NavigationLink {
                        OneToManyRelationshipsView()
                    } label: {
                        Text("One to Many Relationships View")
                    }
                } header: {
                    Text("Day Two")
                        .font(.title)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

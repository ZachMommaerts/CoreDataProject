//
//  DynamicFilterFetchRequestView.swift
//  CoreDataProject
//
//  Created by Zach Mommaerts on 10/27/23.
//

import SwiftUI

struct DynamicFilterFetchRequestView: View {
    @Environment(\.managedObjectContext) var moc
    @State private var lastNameFilter = "A"
    
    var sortDescriptors = [
        SortDescriptor(\Singer.firstName),
        SortDescriptor(\Singer.lastName)
    ]
    
    var body: some View {
        VStack {
            FilteredList(sortDescriptors: sortDescriptors, filterKey: "lastName", filterType: .beginsWith, filterValue: lastNameFilter) { (singer: Singer) in
                Text("\(singer.wrappedFirstName) \(singer.wrappedLastName)")
            }
            
            Button("Add Examples") {
                let taylor = Singer(context: moc)
                taylor.firstName = "Taylor"
                taylor.lastName = "Swift"
                
                let ed = Singer(context: moc)
                ed.firstName = "Ed"
                ed.lastName = "Sheeran"
                
                let adele = Singer(context: moc)
                adele.firstName = "Adele"
                adele.lastName = "Adkins"
                
                try? moc.save()
            }
            
            Button("Show A") {
                lastNameFilter = "A"
            }
            
            Button("Show S") {
                lastNameFilter = "S"
            }
        }
    }
}

#Preview {
    DynamicFilterFetchRequestView()
}

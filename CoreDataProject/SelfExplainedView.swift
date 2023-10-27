//
//  SelfExplained.swift
//  CoreDataProject
//
//  Created by Zach Mommaerts on 10/27/23.
//

import SwiftUI

struct Student: Hashable {
    let name: String
}

struct SelfExplainedView: View {
    var students = [Student(name: "Harry Potter"), Student(name: "Hermoine Granger")]
    var body: some View {
        List {
            ForEach(students, id: \.self) { student in
                Text(student.name)
            }
        }
    }
}

#Preview {
    SelfExplainedView()
}

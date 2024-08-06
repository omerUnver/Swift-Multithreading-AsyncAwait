//
//  TestUrlSessionView.swift
//  Swift-Multithreading
//
//  Created by M.Ömer Ünver on 4.08.2024.
//

import SwiftUI

struct TestUrlSessionView: View {
    @ObservedObject var service = AsyncListViewModel()
    var body: some View {
        ScrollView {
            Text("Async - Await ")
                .font(.largeTitle)
                .foregroundColor(.cyan)
            VStack(alignment: .leading, spacing: 30) {
                ForEach(service.userData, id: \.id) { userData in
                    Text("User : \(userData.id)")
                    Text("Title : \(userData.title)")
                    Text("Body : \(userData.body)")
                }
             }
            .padding(.leading, 10)
        }
        .onAppear(){
            Task {
                await service.fetchData()
            }
        }
    }
}

#Preview {
    TestUrlSessionView()
}

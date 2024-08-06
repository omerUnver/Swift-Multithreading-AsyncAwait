//
//  ContentView.swift
//  Swift-Multithreading
//
//  Created by M.Ömer Ünver on 4.08.2024.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var asyncAwait = AsyncAwait()
    var body: some View {
        ScrollView {
            VStack {
                Button(action: {
                    asyncAwait.getUserInfo()
                }, label: {
                        Text("Get User Info")
                })
                Text("User Name : \(asyncAwait.userName)")
                Text("User Surname : \(asyncAwait.userSurname)")
                Text("User Age : \(asyncAwait.userAge)")
            }
           
            
        }
    }
}

#Preview {
    ContentView()
}

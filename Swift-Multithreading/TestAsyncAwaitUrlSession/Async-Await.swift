//
//  Async-Await.swift
//  Swift-Multithreading
//
//  Created by M.Ömer Ünver on 4.08.2024.
//

import Foundation
class AsyncAwait : ObservableObject {
    @Published var userName = ""
    @Published var userSurname = ""
    @Published var userAge = 0
   
   private func getName() async throws -> String {
        try await Task.sleep(nanoseconds: 20000000)
        return "veli"
    }
    private func getSurname(name : String) async throws -> String {
        try await Task.sleep(nanoseconds: 2000000000)
        return "mali"
    }
    private func getAge(name : String , surname : String) async throws -> Int{
        try await Task.sleep(nanoseconds: 2000000000)
        return 10
    }
    
  public func getUserInfo(){
        Task {
            do {
                let name = try await getName()
                let surname = try await getSurname(name : name)
                let age = try await getAge(name: name, surname: surname)
                print("Name : \(name), Surname : \(surname), Age : \(age)")
                DispatchQueue.main.async {
                    self.userName = name
                    self.userSurname = surname
                    self.userAge = age
                }
                
            } catch {
                debugPrint("Error User Info : \(error.localizedDescription)")
            }
        }
    }
    
    
    
}

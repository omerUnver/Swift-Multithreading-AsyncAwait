//
//  TestAsyncViewModel.swift
//  Swift-Multithreading
//
//  Created by M.Ömer Ünver on 5.08.2024.
//

import Foundation

class AsyncListViewModel : ObservableObject {
    @Published var userData = [UrlSessionModel]()
    var asyncAwaitUrlSession = AsyncAwaitUrlSession()
}

// AsyncAwait

extension AsyncListViewModel{
    func fetchData() async {
        Task {
            do {
                let data = try await asyncAwaitUrlSession.testFetch()
                DispatchQueue.main.async {
                    self.userData = data
                }
            } catch {
                debugPrint("Error ViewModel: \(error.localizedDescription)")
            }
        }
    }
}

//Completion

extension AsyncListViewModel {
//    @Published var userData = [TestAsyncViewModel]()
    //    func fetchUserData() async {
    //        Task {
    //           try await testAsyncAwaitUrlSession.getAsyncData { result in
    //                switch result {
    //                case .failure(let error):
    //                    print(error.localizedDescription)
    //                case .success(let data):
    //                    DispatchQueue.main.async {
    //                        self.userData = data.map(TestAsyncViewModel.init)
    //                    }
    //
    //
    //                }
    //            }
    //        }
    //    }
}
//struct TestAsyncViewModel {
//    var asyncData : UrlSessionModel
//    var asyncId : Int {
//        asyncData.id
//    }
//    var asyncTitle : String {
//        asyncData.title
//    }
//    var asyncBody : String {
//        asyncData.body
//    }
//    var asyncUserId : Int{
//        asyncData.userId
//    }
//
//}



//
//  TestAsyncAwaitUrlSession.swift
//  Swift-Multithreading
//
//  Created by M.Ömer Ünver on 4.08.2024.
//

import Foundation
class AsyncAwaitUrlSession : ObservableObject {
    
    let url = URL(string: "https://jsonplaceholder.typicode.com/posts")
}
//Async-Await ile yapıldığında
extension AsyncAwaitUrlSession  {
    func testFetch() async throws -> [UrlSessionModel]{
        guard let url = url else {
            throw URLError(.badURL)}
        let (data, response) = try await URLSession.shared.data(from: url)
        guard (response as? HTTPURLResponse)?.statusCode == 200 else {
            throw URLError(.badServerResponse)
        }
        do {
            let decodeData = try? JSONDecoder().decode([UrlSessionModel].self, from: data)
            return decodeData!
        } catch {
            throw error
        }
       
        
        
        
    }
}

//Completion ile yapıldığında
extension AsyncAwaitUrlSession {
//    func getAsyncData(completion : @escaping (Result<[UrlSessionModel], ErrorUrl>) -> Void) {
//        guard let url = url else {return completion(.failure(.yanlisURL))}
//        let urlRequest = URLRequest(url: url)
//        URLSession.shared.dataTask(with: urlRequest) { data, response , error in
//            guard (response as? HTTPURLResponse)?.statusCode == 200 else {
//                 return completion(.failure(.statusCodeError))}
//            guard let data = data else {return}
//            guard let decodeData = try? JSONDecoder().decode([UrlSessionModel].self, from: data) else {
//                completion(.failure(.veriIslenemedi))
//                return}
//            completion(.success(decodeData))
//            
//        }
//        .resume()
//       
//    }
}
//
//enum ErrorUrl : Error {
//    case yanlisURL
//    case veriGelmedi
//    case veriIslenemedi
//    case statusCodeError
//}

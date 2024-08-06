//
//  MultiThredeading.swift
//  Swift-Multithreading
//
//  Created by M.Ömer Ünver on 4.08.2024.
//

import Foundation

class MultiThredeading : ObservableObject {
    
    func dispatchQueueExample(){//.background
        DispatchQueue.global(qos: .default).async {
            
        }
    }
    
    /* EN
     // userInteractive: Indicates that the task is interactive with the user.
     // Can be used for tasks that update the user interface, like animations.
     
     // userInitiated: Can be used for tasks that are not directly tied to the user interface
     // but still prevent users from using the app until the task completes.
     
     // default: The system will decide the priority of the task.
     
     // utility: Can be used for tasks that users are not actively following.
     
     // background: Used for long-running tasks that perform cleanup or maintenance in the background.
     
     */
    
    /* TR
     // userInteractive : Çalışan işlemin kullanıcı ile interaktif bir şekilde çalıştığını belirtir. Animasyonlar gibi
        kullanıcı arayüzünü güncelleyen işlemlerde kullanılabilir.
     
     //  userInitiated : Kullanıcı arayüzüyle direkt olarak bağlantılı olmasa da çalıştığı süre boyunca kullanıcıların uygulamayı kullanmasını engelleyen işlemlerde kullanılabilir.
     
     //  default : İşlemin önceliğine sistem tarafından karar verilecektir.
     
     //  utility : Kullanıcının aktif olarak takip etmediği işlemlerde kullanılabilir.
     
     //  background : Temizlik veya bakım için arkada çalışan, uzun sürebilecek işlemler için kullanılabilir.
     */
}

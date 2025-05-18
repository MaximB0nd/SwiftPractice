//
//  main.swift
//  PracticeProject
//
//  Created by Максим Бондарев on 22.02.2025.
//

import Foundation
import SQLite

do {
    
    _ = copyDatabaseIfNeeded(sourcePath: "identifier.sqlite")

    let db = try Connection("identifier.sqlite")
    
    let users = Table("Users")
    
    let userId = Expression<Int64>("id")
    let userName = Expression<String>("name")
    let userEmail = Expression<String>("email")
    let password = Expression<String>("password")
    
    // Creating table in db
    try db.run(users.create { t in
        t.column(userId, primaryKey: true)
        t.column(userName)
        t.column(userEmail)
        t.column(password)
    })

    // Insert data in db
    try db.run(users.insert(userId <- 2, userName <- "Maxim", userEmail <- "max@mail.ru", password <- "123"))
    
    // Selecting values from table in db
    for user in try db.prepare(users) {
        print(try user.get(userName))
    }
}

catch {
    print(error)
}



func copyDatabaseIfNeeded(sourcePath: String) -> Bool {
    let documents = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
    let destinationPath = documents + "/identifier.sqlite"
    let exists = FileManager.default.fileExists(atPath: destinationPath)
    guard !exists else { return false }
    do {
        try FileManager.default.copyItem(atPath: sourcePath, toPath: destinationPath)
        return true
    } catch {
      print("error during file copy: \(error)")
        return false
    }
}


//
//  JsonFile.swift
//  LivingRooms
//
//  Created by luis reynaldo cedeno manzanilla on 15.07.19.
//  Copyright © 2019 R29-Future. All rights reserved.
//

import Foundation
import CoreData

 let instData: [Instagram] = load("Rent.json")

func load<T:Decodable>(_ filename:String, as type:T.Type = T.self) -> T {
    let data:Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldnt find \(filename) in main bundle.")
    }
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldnt load \(filename) from main bundle: \n\(error)")
    }
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldnt parse \(filename) as \(T.self): \n\(error)")
    }
    
}


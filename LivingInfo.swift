//
//  LivingInfo.swift
//  Instagram
//
//  Created by luis reynaldo cedeno manzanilla on 22.07.19.
//  Copyright © 2019 App-Designer2. All rights reserved.
//

import Foundation
import SwiftUI

struct Instagram: Hashable,Codable,Identifiable {
    
    let id: Int
    let names,image,detail,msg,comment:String
    //let coordinates: Coordinates

    init(id: Int, names: String, image: String, msg: String,detail: String,comment:String) {
    self.id = id
    self.names = names
    self.image = image
    self.msg = msg
    self.detail = detail
    self.comment = comment
    
   // self.coordinates = coordinates



//        enum Segmented:  String,CaseIterable,Codable,Hashable {
//            case Execute = "Execute"
//            case VIP = "VIP"
//            case Familiar = "Familiar"
//            case Group = "Group"
//     }
       }
    }

// MARK: - Coordinates
//struct Coordinates: Decodable {
//    struct Coordinates {
//        let lat, lng: Double?
//    }
//}

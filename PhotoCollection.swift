//
//  PhotoCollection.swift
//  Instagram
//
//  Created by App-Designer2 . on 11/3/19.
//  Copyright © 2019 App-Designer2 . All rights reserved.
//

import SwiftUI

struct PhotoCollection: View {
    var body: some View {
        
        var images : [[Int]] = []
        _ = (1...17).publisher
        .collect(3)
        .collect()
        .sink(receiveValue: { images = $0})
        
        return ForEach(0..<images.count, id: \.self) { image in
            
            HStack {
                ForEach(images[image], id: \.self) { collection in
                    Image("insta\(collection)")
                    .resizable()
                        .frame(width: 155, height: 145)
                    .scaledToFit()
                    //.cornerRadius(6)
                    
                }.padding(-16)
            }
        }
    }
}

struct PhotoCollection_Previews: PreviewProvider {
    static var previews: some View {
        PhotoCollection()
    }
}

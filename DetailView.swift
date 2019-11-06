//
//  DetailView.swift
//  Instagram
//
//  Created by App-Designer2 . on 11/4/19.
//  Copyright © 2019 App-Designer2 . All rights reserved.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        NavigationView {
            List {
               HStack {
                                  Spacer()
                                  Text("95").font(.headline)
                                  Text("profile visits in the last 7 days").font(.subheadline).foregroundColor(.secondary)
                                  Spacer()
                              }
                VStack(alignment: .leading, spacing: 8) {
                HStack {
                    Image("logo").resizable().clipShape(Circle())
                        .frame(width: 95, height: 95)
                        .overlay(Circle().stroke(Color.gray, lineWidth: 1))
                    
                    
                    VStack {
                        Text("40").font(.headline)
                        Text("Posts").font(.subheadline)
                    }.padding(10)
                    
                    VStack  {
                        Text("216").font(.headline)
                        Text("Followers").font(.subheadline)
                    }.padding(10)
                    
                    VStack  {
                        Text("872").font(.headline)
                        Text("Following").font(.subheadline)
                    }.padding(10)
                    }
                    
                    VStack(alignment: .leading, spacing: 3) {
                         Text("Drizzy h").bold()
                        
                         Text("Computer & Internet Website").font(.subheadline)
                            .foregroundColor(.secondary)
                        
                         Text("iOS Developer.")
                        Text("UI / UX Designer.")
                    }
            // In the next video i will implement what its needs like
                }
               
                    PhotoCollection()
                
            }.navigationBarTitle(Text("app_designer2"), displayMode: .inline)
            .navigationBarItems(trailing: Button(action: {}) { Image(systemName: "line.horizontal.3")})
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}














//.navigationBarTitle(Text("app_designer2").underline(true, color: .black), displayMode: .inline)
//.navigationBarItems(trailing: Button(action: {}) { Image(systemName: "line.horizontal.3")})





//HStack {
//                   Spacer()
//                   Text("95").font(.headline)
//                   Text("profile visits in the last 7 days").font(.subheadline).foregroundColor(.secondary)
//                   Spacer()
//               }
//
//               HStack {
//                   Image("logo").resizable().clipShape(Circle())
//                       .frame(width: 100, height: 100)
//                       .overlay(Circle().stroke(Color.black, lineWidth: 1))
//               }

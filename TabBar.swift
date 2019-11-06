//
//  TabBar.swift
//  Instagram
//
//  Created by App-Designer2 . on 11/3/19.
//  Copyright © 2019 App-Designer2 . All rights reserved.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            
            ContentView(instagram: instData[0])
            .tabItem({
                Image(systemName: "house.fill")
                }).tag(0)
            
                Image(systemName: "magnifyingglass")
            .tabItem({
                           Image(systemName: "magnifyingglass")
                    }).tag(1)
            
                    Image(systemName: "plus.square")
            .tabItem({
                           Image(systemName: "plus.square")
                    }).tag(2)
            
            Image(systemName: "heart.fill")
            .tabItem({
                           Image(systemName: "heart.fill")
                    }).tag(3)
            
        //Image(systemName: "person.circle.fill")
                DetailView()
                   .tabItem({
                    Image(systemName: "person.circle.fill")
                                 /*   .resizable()//.renderingMode(.original)
                    frame(width: 5, height: 5).clipShape(Circle())*/
                           }).tag(4)
            
        }.accentColor(.init("mode"))
        .colorScheme(.dark)
            .edgesIgnoringSafeArea(.top)
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}

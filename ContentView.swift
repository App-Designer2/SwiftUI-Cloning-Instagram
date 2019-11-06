//
//  ContentView.swift
//  Instagram
//
//  Created by App-Designer2 . on 11/2/19.
//  Copyright © 2019 App-Designer2 . All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var comment: String = ""
    
    var instagram : Instagram
    var body: some View {
        NavigationView {
            List {
                
                ScrollUser()
                
                ForEach(instData, id: \.id) { Insta in
                    VStack(alignment: .leading , spacing: 29) {
                        
                    HStack {
                        Image("logo").resizable().clipShape(Circle())
                        .frame(width: 35, height: 35)
                        .overlay(Circle().stroke(Color.gray, lineWidth: 1))
                        
                        VStack {
                            Text("App-Designer2").bold()
                                .foregroundColor(.init("mode"))
                            Text("Bayern, Germany").foregroundColor(.init("mode"))
                        }
                      
                        Spacer()
                        
                         Image(systemName: "ellipsis")
                        }
                        Image(Insta.image)
                        .resizable()
                            .renderingMode(.original)
                            .frame(width: 417, height: 250)
                        .scaledToFill()
                           // .cornerRadius(15)
                            .padding(-19)
                    //}
                    VStack(alignment: .leading, spacing: 7) {
                        HStack {
                        Image(systemName: "heart").foregroundColor(.init("mode"))
                        Image(systemName: "bubble.left").foregroundColor(.init("mode"))
                        Image(systemName: "paperplane").foregroundColor(.init("mode"))
                            
                             Spacer()
                            
                            Image(systemName: "bookmark").foregroundColor(.init("mode"))
                        }.foregroundColor(.black)
                        
                        HStack {
                        Text("Les gusta a App-Designer2 y").foregroundColor(.init("mode"))
                            Text(Insta.detail).bold().foregroundColor(.init("mode"))
                            Text("mas").foregroundColor(.init("mode"))
                        }
                        
                        HStack {
                        Text("App-Designer2").bold().foregroundColor(.init("mode"))
                            Text(Insta.comment).foregroundColor(.secondary)
                        }
                        HStack {
                        Image("logo").resizable().clipShape(Circle())
                            .frame(width: 25, height: 25)
                            .overlay(Circle().stroke(Color.gray, lineWidth: 1))
                            
                            TextField("Agregar un come...", text: self.$comment).allowsTightening(false)
                            .foregroundColor(.init("mode"))
                            
                            Text("😂")
                            Text("🤣")
                            
                            Image(systemName: "plus.circle").foregroundColor(.secondary)
                            }
                        //Hours here
                        HStack {
                            Text("3 weeks ago .").font(.caption).foregroundColor(.secondary)
                            Text("See Translation").font(.system(size: 14))
                        }
                        }
                    }
                }
            }.navigationBarTitle(Text("Instagram"), displayMode: .inline)
                .navigationBarItems(leading: Button(action: {}) { Image(systemName: "camera")}, trailing: HStack {
                    Button(action: {}) {Image(systemName: "tv")}
                    
                    Button(action: {}) {Image(systemName: "paperplane")}
                }
            ).foregroundColor(.init("mode"))
            
        }
        
    
    }
}

struct ScrollUser: View {
    var body: some View {
        ScrollView(.horizontal) {
            NavigationLink(destination: DetailView()) {
            ZStack {
                HStack {
                    VStack {
                        Image("logo").renderingMode(.original)
                        .resizable().clipShape(Circle())
                        .frame(width: 60, height: 60)
                            .overlay(Circle().stroke(LinearGradient(gradient: Gradient(colors: [ .pink, .red]), startPoint: .bottom, endPoint: .top), lineWidth: 1))
                        
                        Text("Tu historia").font(.caption)
                        .foregroundColor(.init("mode"))
                    }
                    
                    VStack {
                        Image("r29").renderingMode(.original)
                        .resizable().clipShape(Circle())
                        .frame(width: 60, height: 60)
                        .overlay(Circle().stroke(LinearGradient(gradient: Gradient(colors: [ .pink, .red]), startPoint: .bottom, endPoint: .top), lineWidth: 1))
                        
                        Text("R29-Future").font(.caption).foregroundColor(.init("mode"))
                    }
                    
                    VStack {
                        Image("Voolibow").renderingMode(.original)
                        .resizable().clipShape(Circle())
                        .frame(width: 60, height: 60)
                        .overlay(Circle().stroke(LinearGradient(gradient: Gradient(colors: [ .pink, .red]), startPoint: .bottom, endPoint: .top), lineWidth: 1))
                        
                        Text("Voolibow").font(.caption).foregroundColor(.init("mode"))
                    }
                    
                    VStack {
                        Image("livingR")
                            .renderingMode(.original)
                        .resizable().clipShape(Circle())
                        
                        .frame(width: 60, height: 60)
                        .overlay(Circle().stroke(LinearGradient(gradient: Gradient(colors: [ .pink, .red]), startPoint: .bottom, endPoint: .top), lineWidth: 1))
                        
                        Text("LivingRooms").font(.caption).foregroundColor(.init("mode"))
                    }
                    
                    VStack {
                        Image("insta4").renderingMode(.original)
                        .resizable().clipShape(Circle())
                        .frame(width: 60, height: 60)
                        .overlay(Circle().stroke(LinearGradient(gradient: Gradient(colors: [ .pink, .red]), startPoint: .bottom, endPoint: .top), lineWidth: 1))
                        
                        Text("Instagram").font(.caption).foregroundColor(.init("mode"))
                    }
                    
                    VStack {
                        Image("insta5").renderingMode(.original)
                        .resizable().clipShape(Circle())
                        .frame(width: 60, height: 60)
                        .overlay(Circle().stroke(LinearGradient(gradient: Gradient(colors: [ .pink, .red]), startPoint: .bottom, endPoint: .top), lineWidth: 1))
                        
                        Text("Instagram").font(.caption).foregroundColor(.init("mode"))
                    }
                    
                    VStack {
                        Image("insta6").renderingMode(.original)
                        .resizable().clipShape(Circle())
                        .frame(width: 60, height: 60)
                        .overlay(Circle().stroke(LinearGradient(gradient: Gradient(colors: [ .pink, .red]), startPoint: .bottom, endPoint: .top), lineWidth: 1))
                        
                        Text("Instagram").font(.caption).foregroundColor(.init("mode"))
                    }
                }
            }
            Image(systemName: "plus.circle.fill").foregroundColor(.blue)
            .position(x: 80, y: -50)
            }.isDetailLink(true)
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(instagram: instData[0])
    }
}

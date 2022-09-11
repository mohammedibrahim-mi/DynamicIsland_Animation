//
//  ContentView.swift
//  DynamicIsland
//
//  Created by Mohammed Ibrahim on 11/09/22.
//

import SwiftUI



struct DynamicIslandView: View {
    
    @State private var one: Bool = false
    @State private var two: Bool = false
    @State private var three: Bool = false
    
    var body: some View {
        
        ZStack{
            VStack{
                HStack{
                    Text("11:50")
                        .bold()
                        .padding(10).foregroundColor(.white)
                    Spacer()
                    Image(systemName: "chart.bar.fill")
                        .foregroundColor(.white)
                        .padding(10)
                    
                    Image(systemName: "battery.50")
                        .foregroundColor(.white)
                        .padding(10)
                }.frame(maxWidth: .infinity,maxHeight: 250)
            
                Spacer()
                
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(
                    Image("i")
                    
                            .resizable()
                    )
            
            VStack {
                
                HStack {
                    if one {
                        Image("master")
                            .resizable()
                            .frame(width: one ? 60: 30, height: one ? 60: 30)
                            .clipShape(Rectangle())
                            .padding(20)
                    }
                    
                    if one {
                        VStack(alignment: .leading) {
                            Text("Master")
                                .font(.subheadline)
                                .bold()
                            Text("Kutti Story")
                                .opacity(0.5)
                            Text("Anirudh Ravichander")
                                .opacity(0.5)
                                .font(.system(size: 10))
                           }.foregroundColor(.white)
                            .padding(.vertical,5)
                    }
                    Spacer()
                    
                    if one {
                        Image("ai")
                            .resizable()
                            .frame(width: one ? 100: 30, height: one ? 60: 30)
                            .clipShape(Rectangle())
                            .padding(20)
                    }

                    
                }
                .onTapGesture {
                    withAnimation(.spring(response: 0.6, dampingFraction: 0.6, blendDuration: 1.0)) {
                       // expanded.toggle()
                        one = false;
                        two = true;
                    }
                }
                
                HStack {
                    if two {
                        Image("me")
                            .resizable()
                            .frame(width: two ? 60: 30, height: two ? 60: 30)
                            .clipShape(Circle())
                            .padding(20)
                    
                    
                    
                        VStack(alignment: .leading) {
                            Text("Calling")
                                .opacity(0.5)
                                
                                
                            Text("Miv")
                                .font(.subheadline)
                                .bold()
                                
                        }.foregroundColor(.white)
                            .padding(.vertical,5)
                    
                    
                    Spacer()
                        Spacer()
                    
                        Image("a")
                            .resizable()
                            
                            .frame(width: one ? 60: 30, height: one ? 60: 30)
                            .clipShape(Rectangle())
                            
                        Image("d")
                            .resizable()
                            .frame(width: one ? 60: 30, height: one ? 60: 30)
                            .clipShape(Rectangle())
                            
                    
                    Spacer()
                }
                   
                }
                .onTapGesture {
                    withAnimation(.spring(response: 0.6, dampingFraction: 0.6, blendDuration: 1.0)) {
                        one = false;
                        two = false;
                        three = true;
                        
                    }
                }
                
                
                if one {
                    HStack {
                        Spacer()
                        Image(systemName: "backward.fill")
                        Spacer()
                        Image(systemName: "pause.fill")
                        Spacer()
                        Image(systemName: "forward.fill")
                        Spacer()
                        
                    }.foregroundColor(.white)
                        .font(.title)
                        .padding(.bottom,20)
                }
                
            }
            .frame(maxWidth: one ?  380 : two ? 380 : 140,
                   maxHeight: one ? 200 : two ? 80: 40)
                .contentShape(Rectangle())
                .onTapGesture {
                    withAnimation(.spring(response: 0.6, dampingFraction: 0.6, blendDuration: 1.0)) {
                       // expanded.toggle()
                        one = true;
                       
                    }
                }
                .background {
                    Color.black
                }
                .clipShape(RoundedRectangle(cornerRadius: 40.0, style: .continuous))
                .padding(.bottom,500)
            
            
            
            
            
        }
        
       
    }
}


struct ContentView: View {
    
   
    
    var body: some View {
        VStack {
            DynamicIslandView()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

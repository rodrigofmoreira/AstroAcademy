//
//  List View.swift
//  astro academy
//
//  Created by Livia Nobrega Honorato on 15/09/23.
//

import SwiftUI

struct ListView: View {
    @State private var segmentedChoice = 0
    @State var clicou = false

    var body: some View {
        
        NavigationStack{
            TabView {
                ZStack {
                    Image("fundo.oa")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .edgesIgnoringSafeArea(.all)
                    
                    VStack {
                        Text("Comunidades")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .font(.system(size: 40))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading,20)
                            .padding(.bottom,5)
                            .padding(.top,30)
                        
                        HStack{
                            Image("design")
                                .resizable()
                                .frame(width: 170, height: 196)
                                .padding(.trailing,20)
                                .padding(.top,10)
                            
                            Image("managment")
                                .resizable()
                                .frame(width: 143, height: 103)
                                .padding(.leading,20)
                                .padding(.bottom,50)
                            
                        }
                        
                        HStack{
                            
                            Image("business")
                                .resizable()
                                .frame(width: 119, height: 93)
                                .padding(.trailing,19)
                                .padding(.top,70)
                            
                            Image("dev")
                                .resizable()
                                .frame(width: 170, height: 193)
                                .padding(.leading,15)
                            
                        }
                        
                        Image("foguete")
                            .resizable()
                            .frame(width: 390, height: 300)
                        
                    }
                    .padding(.top,75)
                }
                
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text("Comunidade")
                }
                .background(Color.red)
                
                // Segunda guia
                if !clicou {
                    ObjetivosView(clicou: $clicou)
                        .tabItem {
                        Image(systemName: "graduationcap.fill")
                        Text("Objetivos")
                        
                    }
                }
                else {
                    ZStack {
                                        Image("fundo.oa")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                                            .edgesIgnoringSafeArea(.all)
                                        
                                        VStack {
                                            Text("Objetivos")
                                                .foregroundColor(.white)
                                                .fontWeight(.bold)
                                                .font(.system(size: 40))
                                                .frame(maxWidth: .infinity, alignment: .leading)
                                                .padding(.leading,20)
                                                .padding(.bottom,5)
                                                .padding(.top,10)
                                            
                                            Picker("",selection: $segmentedChoice){
                                                Text("em andamento").tag(0)
                                                Text("concluidos").tag(1)
                                            }
                                            .padding(.trailing,16)
                                            .padding(.leading,16)
                                            .padding(.bottom,20)
                                            .padding(.top,1)
                                            .pickerStyle(SegmentedPickerStyle())
                                            HStack {
                                                VStack {
                                                    Image("oa.1")
                                                        .frame(maxWidth: .infinity, alignment: .leading)
                                                        .padding()
                                                        .padding(.leading, 10)
                                                    
                                                    Text("SwiftUI tools")
                                                        .foregroundColor(.white)
                                                        .frame(maxWidth: .infinity, alignment: .leading)
                                                        .padding(.leading, 8)
                                                        .padding(10)
                                                        .padding(.top,-19)
                                                }
                                                
                                            }
                                            .padding(.bottom,60)
                                            
                                            ZStack{
                                                Rectangle()
                                                    .foregroundColor(.pink)
                                                    .frame(width: 56, height: 56)
                                                    .cornerRadius(24)
                                                
                                                NavigationLink(destination: ContentView()) {
                                                    
                                                    Image(systemName: "plus")
                                                        .resizable()
                                                        .frame(width: 35, height: 35)
                                                        .foregroundColor(.white)
                                                }
                                                
                                                
                                            }
                                            .padding(.top,300)
                                            .padding(.leading,290)
                                            
                                            
                                        }
                                    } .tabItem {
                                        Image(systemName: "graduationcap.fill")
                                        Text("Objetivos")
                                        
                                    }
                }
                   
                // Segunda guia
                ZStack {
                    Image("fundo.oa")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .edgesIgnoringSafeArea(.all)
                    
                    VStack {
                        Text("Olá, Marina!")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .font(.system(size: 40))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading,20)
                            .padding(.bottom,5)
                            .padding(.top,30)
                        
                    }
                    .padding(.bottom,650)
                    
                    HStack{
                        ZStack{
                            
                            Rectangle()
                                .foregroundColor(.pink)
                                .frame(width: 70, height: 36)
                                .cornerRadius(20)
                            
                            Text("2 xp")
                                .padding(.leading,20)
                                .foregroundColor(.white)
                                .font(.system(size: 14))
                                .fontWeight(.medium)
                            
                            Image("xp")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .foregroundColor(.white)
                                .padding(.trailing,40)
                        }
                        .padding(.bottom,480)
                        .padding(.trailing,245)
                        ZStack{
                            Rectangle()
                                .foregroundColor(.pink)
                                .frame(width: 46, height: 46)
                                .cornerRadius(20)
                            
                            Image(systemName: "bell")
                                .resizable()
                                .frame(width: 24, height: 24)
                                .foregroundColor(.white)
                        }
                        .padding(.bottom,480)
                    }
                    
                    ZStack{
                        Image("bebe")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(maxWidth: .infinity)
                            .padding(.top,50)
                        
                        ZStack{
                            Rectangle()
                                .foregroundColor(.blue)
                                .frame(width:122, height: 52)
                                .padding(.top,80)
                                .cornerRadius(12)
                            
                            Image(systemName: "star.fill")
                                .padding(.top,80)
                                .foregroundColor(.white)
                                .padding(.trailing,70)
                            
                            
                            Text("Nível 2")
                                .padding(.top,80)
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .padding(.leading,25)
                            
                        }
                    }
                    
                    ZStack {
                        
                        Rectangle()
                            .foregroundColor(Color(hue: 1.0, saturation: 0.129, brightness: 0.183))
                            .frame(width:393, height:350)
                            .padding(.top,540)
                            .cornerRadius(1)
                        
                        
                        Text ("Objetivos concluidos")
                            .padding(.top,270)
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .font(.system(size: 16))
                            .padding(.trailing,200)
                        
                        ZStack{
                            
                            Rectangle()
                                .frame(width: 361, height: 44)
                                .foregroundColor(.black)
                                .padding(.top,350)
                                .cornerRadius(12)
                            
                            ZStack{
                                Rectangle()
                                    .frame(width: 329, height: 4)
                                    .foregroundColor(.gray)
                                    .padding(.top,350)
                                
                                Rectangle()
                                    .frame(width: 134, height: 4)
                                    .foregroundColor(Color(hue: 0.477, saturation: 0.74, brightness: 0.902))
                                    .padding(.top,350)
                                    .padding(.trailing,195)
                            }
                            
                            Text ("Objetivos iniciados")
                                .padding(.top,450)
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .font(.system(size: 16))
                                .padding(.trailing,200)
                            
                            ZStack{
                                Rectangle()
                                    .frame(width: 361, height: 44)
                                    .foregroundColor(.black)
                                    .padding(.top,530)
                                    .cornerRadius(12)
                                
                                ZStack{
                                    Rectangle()
                                        .frame(width: 329, height: 4)
                                        .foregroundColor(.gray)
                                        .padding(.top,530)
                                    
                                    Rectangle()
                                        .frame(width: 134, height: 4)
                                        .foregroundColor(Color(hue: 0.755, saturation: 0.453, brightness: 0.898))
                                        .padding(.top,530)
                                        .padding(.trailing,195)
                                }
                                
                            }
                        }
                    }
                    
                    
                    
                    
                }.tabItem {
                    Image(systemName: "person")
                    Text("Perfil")
                }
                
            }
            .accentColor(.blue) // Cor da guia ativa
        }
    }
}

struct MeAjuda{
    static var jaClicou = false
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}

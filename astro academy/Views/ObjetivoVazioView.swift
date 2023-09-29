//
//  ObjetivoVazioView.swift
//  astro academy
//
//  Created by Livia Nobrega Honorato on 28/09/23.
//

import SwiftUI
struct ObjetivosView: View {
    @State private var searchText = ""
    @State private var navigateToSecondScreen = false
    @State var segmentedChoice = 0
    @Binding var clicou: Bool
    
    var body: some View {
        ZStack {
            Image("fundo.oa")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    Text("Objetivos")
                        .font(.system(size: 36, weight: .semibold))
                        .foregroundColor(.white)
                        .padding(.top, 60)
                        .padding(.leading, 16)
                    
                    Spacer()
                }
                
                Picker("", selection: $segmentedChoice) {
                    Text("em andamento").tag(0)
                    Text("concluidos").tag(1)
                }
                .padding()
                .pickerStyle(SegmentedPickerStyle())
                
                // Seu conteúdo aqui...
                Spacer()
                VStack {
                    Text("Seu espaço está vazio!")
                        .font(.system(size: 24, weight: .semibold))
                        .foregroundColor(.white)
                }
                
                
                Text("Adicione objetivos de aprendizagem e inicie uma incrível jornada de desenvolvimento pessoal!")
                    .font(.system(size: 16))
                    .foregroundColor(.white)
                    .frame(width: 290)
                    .multilineTextAlignment(.center)
                    .padding(.top)
                    .padding(.bottom)
                
                Image("Line 7")
                
                HStack {
                    Spacer()
                    NavigationLink(destination: ContentView())
                    {
                        Image(systemName: "plus")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .padding()
                            .background(Color.pink)
                            .foregroundColor(.white)
                            .cornerRadius(100)
                    }
                    .simultaneousGesture(
                        TapGesture()
                            .onEnded{ _ in
                                clicou = true
                                print("entrou")
                            })
                }
                .padding()
                
                Spacer()
            }
            
        }
    }
    
    //    struct ObjetivosView_Previews: PreviewProvider {
    //        static var previews: some View {
    //           // ObjetivosView()
    //        }
    //    }
    //}
}

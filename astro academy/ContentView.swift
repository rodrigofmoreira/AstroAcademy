//
//  ContentView.swift
//  astro academy
//
//  Created by Livia Nobrega Honorato on 08/09/23.
//

import SwiftUI

struct TopoView: View {
    @Environment(\.colorScheme) var colorScheme
    @State private var objetivoChoice = "Selecione"
    @State private var areaChoice = "Selecione"
    @State private var segmentedChoice = 0
    

    let objetivoOptions = ["Business", "Design", "Dev", "Management"]
    let areaOptions = ["OA 1", "OA 2", "OA 3", "OA 4"]

    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Text("Novo OA")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding(.leading, 40)

                    Spacer()
                    NavigationLink(destination: ListView()) {
                        Image(systemName: "xmark.circle.fill")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(.gray)
                            .padding()
                    }
                }

                Rectangle()
                    .fill(.gray)
                    .frame(height: 1)
                    .padding(.bottom, 2)

                ZStack {
                    Rectangle()
                        .frame(width: 360, height: 50)
                        .foregroundColor(.gray.opacity(0.2))
                        .cornerRadius(12)

                    HStack {
                        Text("Área")
                            .foregroundColor(.white)
                            .font(.system(size: 18))
                            .padding(.leading, 10)
                        Spacer()

                        Menu {
                            ForEach(objetivoOptions, id: \.self) { option in
                                Button(action: {
                                    objetivoChoice = option
                                }) {
                                    Text(option)
                                }
                            }
                        } label: {
                            HStack {
                                Text(objetivoChoice)
                                    .foregroundColor(.white)
                                    .font(.system(size: 14))
                                    .padding(.trailing, 2)
                                Image(systemName: "chevron.down")
                                    .frame(width: 20, height: 10)
                                    .foregroundColor(.white)
                                    .padding(.trailing, 10)
                            }
                        }
                    }
                }
                .padding()
                .padding(.top, 2)

                ZStack {
                    Rectangle()
                        .padding(-1.0)
                        .frame(width: 360, height: 50)
                        .foregroundColor(.gray.opacity(0.2))
                        .cornerRadius(12)

                    HStack {
                        Text("Objetivos")
                            .foregroundColor(.white)
                            .font(.system(size: 18))
                            .padding(.leading, 30)
                        Spacer()

                        Menu {
                            ForEach(areaOptions, id: \.self) { option in
                                Button(action: {
                                    areaChoice = option
                                }) {
                                    Text(option)
                                }
                            }
                        } label: {
                            HStack {
                                Text(areaChoice)
                                    .foregroundColor(.white)
                                    .font(.system(size: 14))
                                    .padding(.trailing, 2)
                                Image(systemName: "chevron.down")
                                    .frame(width: 20, height: 10)
                                    .foregroundColor(.white)
                                    .padding(.trailing, 28)
                            }
                        }
                    }
                }
                .padding(-3.0)
                .padding(.top, 2)
            }
        }
    }
}

struct ContentView: View {
    @State private var textColor: Color = Color.blue
    @State var textFieldText: String = "Resumo"
    @State var textFieldText2: String = "+ Novo Item"
    @State private var dueDate = Date()
    @State private var navigateToSecondScreen = false
    
    @Environment(\.dismiss) var dismiss

    var body: some View {
        NavigationView {
            ZStack {
                Color.black.opacity(0.8)
                    .ignoresSafeArea()

                ScrollView {
                    VStack {
                        TopoView()

                        Rectangle()
                            .fill(.gray)
                            .frame(height: 1)
                            .padding(.bottom, 10)
                            .padding(.top, 20)

                        ZStack {
                            Rectangle()
                                .frame(width: 360, height: 87.0)
                                .foregroundColor(.black.opacity(0.8))
                                .cornerRadius(12)

                            HStack {
                                Text("Descricao")
                                    .fontWeight(.medium)
                                    .foregroundColor(.white)
                                    .padding(.bottom, 30)
                                    .padding(.leading, 15)
                                    .frame(maxWidth: .infinity, alignment: .leading)

                                TextField("Resumo", text: $textFieldText)
                                    .foregroundColor(.gray)
                                    .font(.system(size: 14))
                                    .padding(.bottom, 30)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }

                            .padding()
                        }

                        Text("Check-list")
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 20)
                            .padding(.top, 10)

                        ZStack {
                            Rectangle()
                                .frame(width: 360, height: 50)
                                .foregroundColor(.black.opacity(0.6))
                                .cornerRadius(12)

                            HStack {
                                TextField("+ Novo item", text: $textFieldText2)
                                    .padding(.leading, 10)
                                    .fontWeight(.medium)
                                    .font(.system(size: 18))
                                    .foregroundColor(.white)
                                    .padding(.bottom, 2)
                                    .frame(maxWidth: .infinity, alignment: .leading)

                                TextField("Resumo", text: $textFieldText)
                            }

                            .padding()
                        }

                        HStack {
                            DatePicker("Prazo", selection: $dueDate, displayedComponents: [.date])
                                .datePickerStyle(.compact)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .foregroundColor(.white)
                                .font(.system(size: 20, weight: .medium)) // Altere a fonte e o tamanho conforme necessário
                                .padding()
                                .padding(.leading, 4)
                        }

                        Button(action: {
                            navigateToSecondScreen = true
                            dismiss()
                        }) {
                            ZStack {
                                Rectangle()
                                    .frame(width: 360, height: 50)
                                    .foregroundColor(.pink)
                                    .cornerRadius(12)

                                Text("Adicionar")
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                            }
                            .padding(.top, 170)
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

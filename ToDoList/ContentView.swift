//
//  ContentView.swift
//  ToDoList
//
//  Created by krygz on 27.11.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var email : String = ""
    
    var body: some View {
        ZStack {
            Color.white
                .ignoresSafeArea() // Yüzde yüz ekran kapatan özellik
            VStack { // Yukardan alt tarafa doğru sıralamızı yarar
                Image("Union")
                    .resizable()
                    .frame(width: 187, height: 180) // Boyutlandırma
                    .padding(.bottom,170)
                
                RoundedRectangle(cornerRadius: 12) // Yumuşatılmı dikdörtgen
                    .stroke(.black) // Çerçeve ayarı yapılıyor
                    .frame(width: 327, height: 48)
                    .foregroundColor(Color.blue) // renk ayarı
                

                HStack(spacing: 10){
                    Spacer()
                    Text("Forget Password")
                        .foregroundColor(Color.gray)
                        .font(.caption)
                        .padding(.trailing,24) // .leading : Soldan boşluk vermek için , .trailing: Sağdan boşluk
                }
                Button {
                    // Action
                } label: {
                    Text("SIGN UP")
                        .foregroundColor(.white)
                        .background {
                            RoundedRectangle(cornerRadius: 12)
                                .foregroundColor(Color("F79E89"))
                                .frame(width: 327, height: 48)
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

struct ButtonStyleOne: ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            Divider()
            configuration.label
            }
        .frame(width: 343, height: 50)
        .background(Color.clear)
        .foregroundColor(Color.white)
        .cornerRadius(8)
    }
}

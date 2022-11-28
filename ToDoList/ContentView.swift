//
//  ContentView.swift
//  ToDoList
//
//  Created by krygz on 27.11.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        //MARK: - Stackler : Objeleri konumlandırma ve UI açısından bize yardımcı olacaktır.
        // ZStack : Üst üste objeleri konumlandırmamızı sağlar.
        // VStack : Dikey düzlemde objeleri konumlandırmamızı sağlar.
        // HStack : Yatay düzlemde objelerin konumlandırmamızı sağlar.
        
        ZStack {
            Color.white
                .ignoresSafeArea() // genellikler renk için kullanılır. XCode tarafından sunulan alanın dışına çıkmamızı sağlar ve tam ekran olmasını sağlar.
            VStack(spacing: 30) { // Spacing : İçine koyduğumuz objelerin birim uzaklığını belirlemenize sağlar.
                Image("Union") // Resimleri çağırmamızda kullandığımız etken
                    .resizable() // Resimlerin tekrardan boyutlandırmamızda yardımcı olan propertydir.
                    .frame(width: 187, height: 180) // Resimlerin,yazıların vb. gibi çerçeve boyutunu ayarlamış oluruz.
                    .padding(.bottom,170)  //Padding: Boşluk bırakmanı sağlar || .leading : Soldan boşluk vermek için , .trailing: Sağdan boşluk
                
                VStack(spacing: 40) {
                    TextField("Email", text: $email) // Textfield oluştururken @State diye depo oluşturmamız gerekiyor. Bu depo aktaracağımız JSON ile alıcı arasındaki bir yol gibidir. Onu etiket olarak kullanırız.
                        .frame(width: 310)
                        .background { // arka tarafını ister daire ister benim gibi kare de koyabilirsiniz. Bu property de istediğiniz çoğu şeyi yapabilirsiniz.
                            RoundedRectangle(cornerRadius: 12) // Köşeleri yumuşaltılmaya yatkın diktörtgen elde ediyoruz.
                                .stroke(.black) // Çerçeve çizgisini rengini belirlemek için kullanıldı burada.
                                .frame(width: 327, height: 48)
                        }
                    
                    SecureField("Password", text: $password)
                        .frame(width: 310)
                        .background {
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(.black)
                                .frame(width: 327, height: 48)
                        }
                }
                HStack(spacing: 10){
                    Spacer()
                    Text("Forget Password")
                        .foregroundColor(Color.gray)
                        .font(.caption)
                        .padding(.trailing,24)
                   
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

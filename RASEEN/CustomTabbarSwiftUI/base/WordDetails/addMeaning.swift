//
//  SwiftUIView.swift
//  CustomTabbarSwiftUI
//
//  Created by Leena Almatar on 27/01/1445 AH.
//

import SwiftUI

struct addMeaning: View {
    var word: String
    @ObservedObject var viewModel: DataViewModel
    @State private var userInput1 = ""
    @State private var userInput2 = ""
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Text("\(word)").font(.largeTitle).fontDesign(.rounded).foregroundColor(.brown).frame(alignment: .trailing)
                    Spacer()
                    VStack(spacing: 8) {
                        Spacer()
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color(red: 42/255, green: 134/255, blue: 145/255).opacity(0.4))
                            .shadow(radius: 4)
                            .overlay(
                                VStack(alignment: .trailing, spacing: 8) {
                                    TextField("ادخل المعنى الجديد ...", text: $userInput1)
                                        .textFieldStyle(.roundedBorder)
                                        .font(.subheadline)
                                        .foregroundColor(.gray)
                                        .frame(height: 60) // Adjust the height as needed
                                    
                                    TextField("مثال", text: $userInput2)
                                        .textFieldStyle(.roundedBorder)
                                        .font(.subheadline)
                                        .foregroundColor(.gray)
                                        .frame(height: 60) // Adjust the height as needed
                                }
                                .padding(20) // Adjust the trailing padding as needed
                            )
                            .frame(width: 350, height: 350) // Adjust the height as needed
                            .padding(16)
                    }
                    Spacer()
                }
               
                NavigationLink(destination: HomeView(viewModel: DataViewModel())) {
                    Text("حفظ")
                        .foregroundColor(.white) // Set text color to white
                        .background(
                            RoundedRectangle(cornerRadius: 30) // Increased corner radius for a larger rectangle
                                .fill(Color(red: 42/255, green: 134/255, blue: 145/255).opacity(0.5))
                                .frame(width: 150, height: 40) // Adjust the frame size as needed
                        )
                        
                }            }
            .environment(\.layoutDirection, .rightToLeft)
        }
    }
}

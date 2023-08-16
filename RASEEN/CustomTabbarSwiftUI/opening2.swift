//
//  opening2.swift
//  CustomTabbarSwiftUI
//
//  Created by Noura Almudaires on 28/01/1445 AH.
//

import SwiftUI

struct opening2: View {
    @ObservedObject var viewModel: DataViewModel
    var body: some View {
        NavigationView {
            ZStack {
                Image("opening2")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                GeometryReader { geometry in
                    VStack(spacing: 10) {
                        Text(" ")
                            .font(.system(size: 60))
                            .foregroundColor(.white)

                        Text(" ")
                            .font(.system(size: 70))
                            .bold()
                            .foregroundColor(.white)

                        Spacer() // Remove or adjust this Spacer
                        
                        NavigationLink(destination: opening(viewModel: viewModel)) {
                            Text("مشينا؟")
                                .frame(width: 130, height: 20)
                                .foregroundColor(.white)
                                .font(.system(size: 40))
                                .opacity(0.9)
                                .padding(18)
                                .background(Color.brown.opacity(0.4))
                                .cornerRadius(30)
                        }
                        .padding(.bottom, 50) // Adjust the bottom padding as needed
                        
                        
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .position(x: geometry.size.width / 2, y: geometry.size.height / 2)
                }
              
            }
        }.navigationBarBackButtonHidden(true)
    }
}

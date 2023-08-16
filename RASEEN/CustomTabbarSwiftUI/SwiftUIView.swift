//
//  SwiftUIView.swift
//  CustomTabbarSwiftUI
//
//  Created by Noura Almudaires on 28/01/1445 AH.
//

import SwiftUI

struct opening2: View {
    var body: some View {
        NavigationView {
            ZStack {
                Image("interface")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                GeometryReader { geometry in
                    VStack(spacing: 10) {
                        Spacer()
                        
                        Text(" حياك الله في ")
                            .font(.system(size: 60))
                            .foregroundColor(.white)
                        
                        Text("رَصين")
                            .font(.system(size: 70))
                            .bold()
                            .foregroundColor(.white)
                        
                        Spacer()

                        NavigationLink(destination: MainTabbedView()) {
                            Text("اقلط ")
                        
                                .frame(width: 100, height: 20)
                                .foregroundColor(.white)
                                .font(.system(size: 40))
                                .opacity(0.9)
                                .padding(18)
                                .background(Color.brown.opacity(0.4))
                                .cornerRadius(30)
                            
                            
                        }
                        
                    }
                    
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .position(x: geometry.size.width / 2, y: geometry.size.height / 2)
                }
                
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        opening2()
    }
}

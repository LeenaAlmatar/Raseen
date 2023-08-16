//
//  TabBar.swift
//  CustomTabbarSwiftUI
//
//  Created by Revan on 16/01/1445 AH.
//
// this page for tab bar design (navigation bar )

import SwiftUI

//struct TabBar: View {
//    @Binding var selectedTab: Int
//    
//    var body: some View {
//        ZStack {
//            HStack {
//                ForEach(TabbedItems.allCases, id: \.self) { item in
//                    Button {
//                        selectedTab = item.rawValue
//                    } label: {
//                        customTabItem(imageName: item.iconName, isActive: (selectedTab == item.rawValue))
//                    }
//                }
//            }
//            .padding(6)
//        }
//        .frame(height: 70)
//        .background(Color.brown.opacity(0.4))
//        .cornerRadius(35)
//        .padding(.horizontal, 26)
//    }
//
//    func customTabItem(imageName: String, isActive: Bool) -> some View {
//        let width: CGFloat = isActive ? UIScreen.main.bounds.width / CGFloat(TabbedItems.allCases.count) : 110
//
//        return HStack(spacing: 10) {
//            Spacer()
//            Image(imageName)
//                .resizable()
//                .renderingMode(.template)
//                .foregroundColor(isActive ? .black : .gray)
//                .frame(width: 30, height: 30)
//            if isActive {
//                // Add any label/text here if needed
//            }
//            Spacer()
//        }
//        .frame(width: width, height: 50)
//        .background(isActive ? Color.brown.opacity(0.6) : .clear)
//        .cornerRadius(30)
//    }
//}
//    

//
//  ContentView.swift
//  CustomTabbarSwiftUI
//
//

// this page for icons when you click it , what happen ? which page will move you to ?

import SwiftUI

enum TabbedItems: Int, CaseIterable {
    case search = 0
    case map
    case saved
    
    var iconName: String {
        switch self {
        case .search:
            return "search-icon"
        case .map:
            return "map-icon"
        case .saved:
            return "saved-icon"
        }
    }
}

struct MainTabbedView: View {
    @State var selectedTab = 1 // Set the initial selected tab
    @ObservedObject var viewModel: DataViewModel
    var body: some View {
        VStack{
            TabView(selection: $selectedTab) {
                SearchView(viewModel: DataViewModel())
                    .tag(0)
                HomeView(viewModel: DataViewModel())
                    .tag(1)
                Saved(viewModel: DataViewModel())
                    .tag(2)
            }
            
            TabBar(viewModel: DataViewModel(), selectedTab: $selectedTab) // Use the custom TabBar here
        }
    }
}
struct ContentView: View {
    var body: some View {
        NavigationView {
            MainTabbedView(viewModel: DataViewModel())
        }
    }
}

struct TabBar: View {
    @ObservedObject var viewModel: DataViewModel
    @Binding var selectedTab: Int
    var body: some View {
        ZStack {
            HStack {
                ForEach(TabbedItems.allCases, id: \.self) { item in
                    Button {
                        selectedTab = item.rawValue
                    } label: {
                        customTabItem(imageName: item.iconName, isActive: (selectedTab == item.rawValue))
                    }
                }
            }
            .padding(6)
        }
        .frame(height: 70)
        .background(Color.brown.opacity(0.4))
        .cornerRadius(35)
        .padding(.horizontal, 26)
    }

    func customTabItem(imageName: String, isActive: Bool) -> some View {
        let width: CGFloat = isActive ? UIScreen.main.bounds.width / CGFloat(TabbedItems.allCases.count) : 110

        return HStack(spacing: 10) {
            Spacer()
            Image(imageName)
                .resizable()
                .renderingMode(.template)
                .foregroundColor(isActive ? .black : .gray)
                .frame(width: 30, height: 30)
            if isActive {
                // Add any label/text here if needed
            }
            Spacer()
        }
        .navigationBarBackButtonHidden(true)
        .frame(width: width, height: 50)
        .background(isActive ? Color.brown.opacity(0.6) : .clear)
        .cornerRadius(30)
    }
}

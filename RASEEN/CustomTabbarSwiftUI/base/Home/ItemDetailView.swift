//
//  ItemDetailView.swift
//  CustomTabbarSwiftUI
//
//  Created by Revan on 16/01/1445 AH.
//
import SwiftUI

struct ItemDetailView: View {
    let item: Int
    
    var body: some View {
        Text("Item \(item) Detail View")
            .navigationBarTitle("Item \(item)", displayMode: .inline)
    }
}

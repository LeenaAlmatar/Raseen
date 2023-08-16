//
//  SearchView.swift
//  CustomTabbarSwiftUI
//
//  Created by Revan on 15/01/1445 AH.
//
import SwiftUI

struct SearchView: View {
    @ObservedObject var viewModel: DataViewModel
    @State private var searchText = ""
    @State private var showMeaning = false
    @State private var meaning = ""
    @State private var searchHistory: [String] = []

    var body: some View {
        VStack {
            HStack {
                TextField("وش تدور عليه؟", text: $searchText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
                    .onChange(of: searchText) { newValue in
                        if newValue.isEmpty {
                            self.showMeaning = false
                            self.meaning = ""
                        }
                    }

                Button(action: {
                    searchMeaning()
                }) {
                    Image(systemName: "magnifyingglass")
                        .imageScale(.large)
                        .foregroundColor(.brown) // Adjust the color as needed
                }
                .padding(.trailing)
            }
            .padding(.vertical)
            
            if showMeaning {
                Text(meaning).foregroundColor(Color(red: 7/255, green: 96/255, blue: 106/255))
                    .padding()
                
            }

            List(searchHistory, id: \.self) { historyItem in
                Button(action: {
                    searchText = historyItem
                    searchMeaning()
                }) {
                    Text(historyItem).foregroundColor(Color(red: 7/255, green: 96/255, blue: 106/255))
                }
            }
            
        }
//        .onAppear {
//            // Load initial data or perform other setup if needed
//        }
    }

    func searchMeaning() {
        if !searchText.isEmpty {
            if !searchHistory.contains(searchText) {
                searchHistory.append(searchText)
            }
            
            if let wordMeaning = viewModel.allWords.first(where: { $0.word == searchText })?.meanings.first?.meaning {
                self.meaning = wordMeaning
                self.showMeaning = true
            } else {
                self.meaning = "معليش كلمتك مب فيه"
                self.showMeaning = true
            }
        } else {
            self.meaning = "من فضلك، أدخل الكلمة"
            self.showMeaning = true
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(viewModel: DataViewModel())
    }
}

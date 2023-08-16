//
//  WordList.swift
//  CustomTabbarSwiftUI
//
//  Created by Leena Almatar on 22/01/1445 AH.
//

import SwiftUI

struct WordList: View {
   @ObservedObject var viewModel: DataViewModel
   @Binding var selectedRegion: String?
   var filteredWords:[DataModel]{
        if selectedRegion == "جميع المناطق" {
            return viewModel.allWords
        }else{
            let region = selectedRegion
            return viewModel.allWords.filter{$0.region == region}
        }
    }
var body: some View {
     ScrollView {
                 Text("قائمة الكلمات ").font(.largeTitle).fontDesign(.rounded).foregroundColor(.brown)
                 Spacer(minLength: 20)
        HStack {
                    Button(action: {}) {
                        Image(systemName: "line.3.horizontal.decrease.circle")
                            .foregroundColor(.brown)
                    }// end of filter button
                    Button(action: {}) {
                        Image(systemName: "arrow.up.arrow.down.circle")
                            .foregroundColor(.brown)
                    } // end of sort button
        }.position(x: 70, y: 10).font(.title) // end H stack
                
        VStack(spacing: 15) {
            Spacer()
            ForEach(filteredWords,id: \.id) { word in
                NavigationLink(destination: WordDetailsView(viewModel: viewModel, word: word)) {
                    ZStack {
                        Text(word.word)
                                    .foregroundColor(.white)
                                    .font(.title)
                                    .fontDesign(.rounded)
                                    .frame(width: 350, height: 70)
                                    .background(RoundedRectangle(cornerRadius: 16).fill(.brown.opacity(0.8)))
                                
                        Image(systemName: "arrow.backward.circle")
                                    .offset(x: -150, y: 0)
                                    .foregroundColor(.white).font(.title)
                            } // end z stack
                        } // end Navigation Link
                    } // end for each
                }  // end v stack
            }  // end scroll view
    } // end of body
} // end of struct

struct WordList_Previews: PreviewProvider {
    @ObservedObject var viewModel: DataViewModel
    static var previews: some View {
        let selectedRegionBinding = Binding<String?>(get:{nil},set: {_ in})
        return WordList(viewModel: DataViewModel(), selectedRegion: selectedRegionBinding)
    }
}

//
//  WordDetailsView.swift
//  CustomTabbarSwiftUI
//
//  Created by Revan on 16/01/1445 AH.
//

import SwiftUI

struct WordDetailsView: View {
    @ObservedObject var viewModel: DataViewModel
    let word: DataModel
    private func meaningIndex(for meaning: MeaningModel) -> Int {
        return word.meanings.firstIndex(where: { $0.id == meaning.id })!
    }
    
var body: some View {
        ScrollView {
            HStack {
                Text("\(word.word)").font(.largeTitle).fontDesign(.rounded).foregroundColor(.brown).frame(alignment: .trailing)
                
            }
            Spacer(minLength: 20)

            ForEach(word.meanings.indices, id: \.self) { index in
                let meaning = word.meanings[index]
                Button(action: {
                        if let index = viewModel.allWords.firstIndex(where: { $0.id == word.id }) {
                                viewModel.toggleSavedState(atWordIndex: index, meaningIndex: 0)
                                    }
                                }) {
                                    if meaning.isSaved {
                                        Label("", systemImage: "bookmark.fill")
                                    } else {
                                        Label("", systemImage: "bookmark")
                                    }
                                }
                                .foregroundColor(.brown.opacity(0.8))
                VStack(spacing: 8) {
                    
                    Text(meaning.meaning)
                        .font(.body)
                        .foregroundColor(.white)
                    Text("مثال")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    Text(meaning.example ?? "لا يوجد مثال للكلمة")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    HStack {
                        Spacer() // Spacer to push buttons to the right side
                        
                        Button(action: {
                            viewModel.upvoteMeaning(atWordIndex: 0, meaningIndex: index)
                        }) {
                            Image(systemName: "hand.thumbsup").foregroundColor(.brown.opacity(0.8))
                            Text("\(viewModel.allWords[0].meanings[index].upvotes)").foregroundColor(.brown.opacity(0.8))
                        }

                        Button(action: {
                            viewModel.downvoteMeaning(atWordIndex: 0, meaningIndex: index)
                        }) {
                            Image(systemName: "hand.thumbsdown").foregroundColor(.brown.opacity(0.8))
                            Text("\(viewModel.allWords[0].meanings[index].downvotes)").foregroundColor(.brown.opacity(0.8))
                        }

                        Button(action: {
                            viewModel.flagMeaning(atWordIndex: 0, meaningIndex: index)
                        }) {
                            Image(systemName: "flag")
                                .foregroundColor(.red)
                        }
                        
                        Spacer() // Spacer to balance alignment
                    }

                }
                .frame(width: 350, height: 200, alignment: .trailing)
                .background(RoundedRectangle(cornerRadius: 20).fill(Color(red: 42/255, green: 134/255, blue: 145/255).opacity(0.4))
                .shadow(radius: 4))
                .padding(16)
            }

            NavigationLink(destination: addMeaning(word: word.word, viewModel: viewModel)) {
                            Text("اضافة معنى اخر")
                                .foregroundColor(.white) // Set text color to white
                                .background(
                                    RoundedRectangle(cornerRadius: 30) // Increased corner radius for a larger rectangle
                                        .fill(Color(red: 42/255, green: 134/255, blue: 145/255).opacity(0.5))
                                        .frame(width: 150, height: 40) // Adjust the frame size as needed
                                )
                        }
        }
        .environment(\.layoutDirection, .rightToLeft)
    }

}

import SwiftUI

struct Saved: View {
    @ObservedObject var viewModel: DataViewModel

    var body: some View {
        NavigationView {
            ScrollView{
                Text("كلمات محفوظة").font(.largeTitle).fontDesign(.rounded).foregroundColor(.brown)
                Spacer(minLength: 20)
        VStack(spacing:10){
            let savedWords = viewModel.allWords.filter { word in
                word.meanings.contains(where: { $0.isSaved })
            }
            if savedWords.isEmpty {
                Text("لم تقوم بحفظ كلمة").foregroundColor(.brown)
                    .font(.title)
                .fontDesign(.rounded)}
         else {
            ForEach(savedWords) { word in
                ForEach(word.meanings.filter({ $0.isSaved })) { meaning in
                    NavigationLink(destination: WordDetailsView(viewModel: viewModel, word: word)) {
                            ZStack{
                                Text(word.word)
                                    .foregroundColor(.white)
                                    .font(.title)
                                    .fontDesign(.rounded)
                                    .frame(width: 350, height: 70)
                                    .background(RoundedRectangle(cornerRadius: 16).fill(.brown.opacity(0.8)))
                                
                                Image(systemName: "arrow.backward.circle")
                                    .offset(x:-150 , y:0)
                                    .foregroundColor(.white)
                                .font(.title2)
                            } // end of ZStack
                        } // end of NavigationLink
                    } // end of ForEach
                } // end of ForEach
            }
        } // end of VStack
        .padding(.horizontal)
    } // end of ScrollView
    .navigationBarTitle("", displayMode: .inline)
} // end of NavigationView
} // end of body
} // end of struct

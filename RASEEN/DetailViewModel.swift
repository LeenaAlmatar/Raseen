//
//  ViewModel.swift
//  CustomTabbarSwiftUI
//
//  Created by Leena Almatar on 22/01/1445 AH.
//

import Foundation
import SwiftUI


class DataViewModel: ObservableObject{
    @Published var allWords : [DataModel] = [
        DataModel(word: "اولاه", meaning: "ارجوك"),
        DataModel(word: "اطمر", meaning: "اقفز"),
        DataModel(word: "تروكع", meaning: "يركع كركوع الصلاة"),
        DataModel(word: "اشبح", meaning: "ما ادري"),
        DataModel(word: "اغبش", meaning: "ما ادري"),
        DataModel(word: "فاهي", meaning: "مو مركز")
    ]
    @Published var popularWords : [DataModel] = [ DataModel(word: "اولاه", meaning: "ارجوك"),
                                                  DataModel(word: "اطمر", meaning: "اقفز"),
                                                  DataModel(word: "تروكع", meaning: "يركع كركوع الصلاة"),
                                                  DataModel(word: "اشبح", meaning: "ما ادري"),
                                                  DataModel(word: "اغبش", meaning: "ما ادري"),
                                                  DataModel(word: "فاهي", meaning: "مو مركز")]
    
    
    @Published var savedWords : [DataModel] = [
        DataModel(word: "اولاه", meaning: "ارجوك")
    ]
   
    
 //   @Published var word: String = ""
 //       guard !word.isEmpty else { return }
//        let newDetail = Detail(word: word, meaning: "")
//        savedWords.append(newDetail)
    func addSavedWord(_ dataModel: DataModel) {
        savedWords.append(dataModel)
       }
    
}


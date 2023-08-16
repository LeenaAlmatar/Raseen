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
    DataModel(word: "تروكع", region: "منطقة الرياض", meanings: [MeaningModel(meaning: "الشخص الذي يؤدي الصلاة", upvotes: 1, downvotes: 0, isSaved: false)]),
    DataModel(word: "يدربي", region: "منطقة الرياض", meanings: [MeaningModel(meaning: "يدحرج", upvotes: 2, downvotes: 0, isSaved: true)]),
    DataModel(word: "وشوله", region: "منطقة الرياض", meanings: [MeaningModel(meaning: "لماذا", upvotes: 5, downvotes: 0, isSaved: false)]),
    DataModel(word: "متروس", region: "منطقة الرياض", meanings: [MeaningModel(meaning: "ممتلئ", upvotes: 3, downvotes: 0, isSaved: false)]),
    DataModel(word: "اقمز", region: "منطقة الرياض", meanings: [MeaningModel(meaning: "اذهب بسرعة", upvotes: 0, downvotes: 0, isSaved: false)]),
    DataModel(word: "مخفه", region: "منطقة الرياض", meanings: [MeaningModel(meaning: "اضحوكه", upvotes: 2, downvotes: 0, isSaved: false)]),
    DataModel(word: "اقلط", region: "منطقة الرياض", meanings: [MeaningModel(meaning: "ادخل", upvotes: 0, downvotes: 0, isSaved: false)]),
    DataModel(word: "حزه", region: "منطقة الرياض", meanings: [MeaningModel(meaning: "زمن", upvotes: 20, downvotes: 0, isSaved: false)]),
    DataModel(word: "مانيب", region: "منطقة الرياض", meanings: [MeaningModel(meaning: "لن افعل", upvotes: 30, downvotes: 0, isSaved: false)]),
    DataModel(word: "يتطنز", region: "منطقة الرياض", meanings: [MeaningModel(meaning: "يسخر", upvotes: 9, downvotes: 0, isSaved: false)]),
    DataModel(word: "يرنه", region: "منطقة الرياض", meanings: [MeaningModel(meaning: "يضربه", upvotes: 0, downvotes: 0, isSaved: false)]),
   
    
    DataModel(word: "هلم", region: "منطقة عسير", meanings: [MeaningModel(meaning: "تعال الي", upvotes: 9, downvotes: 0, isSaved: false)]),
    DataModel(word: "طاوي", region: "منطقة عسير", meanings: [MeaningModel(meaning: "جائع", upvotes: 3, downvotes: 0, isSaved: true)]),
    DataModel(word: "بدع", region: "منطقة عسير", meanings: [MeaningModel(meaning: "غني", upvotes: 4, downvotes: 0, isSaved: false)]),
    DataModel(word: "ماليبه", region: "منطقة عسير", meanings: [MeaningModel(meaning: "لا ارغب به", upvotes: 9, downvotes: 0, isSaved: false)]),
    DataModel(word: "هب لي", region: "منطقة عسير", meanings: [MeaningModel(meaning: "اعطني", upvotes: 10, downvotes: 0, isSaved: false)]),
    DataModel(word: "وك", region: "منطقة عسير", meanings: [MeaningModel(meaning: "اداة استنكار وتعجب", upvotes: 0, downvotes: 0, isSaved: false)]),
    DataModel(word: "امزهب", region: "منطقة عسير", meanings: [MeaningModel(meaning: "المزرعة الصغيرة", upvotes: 0, downvotes: 0, isSaved: false)]),
    DataModel(word: "عيّن", region: "منطقة عسير", meanings: [MeaningModel(meaning: "انظر", upvotes: 1, downvotes: 0, isSaved: false)]),
    DataModel(word: "ميفا", region: "منطقة عسير", meanings: [MeaningModel(meaning: "تنور", upvotes: 8, downvotes: 0, isSaved: false)]),
    DataModel(word: "اندر", region: "منطقة عسير", meanings: [MeaningModel(meaning: "اخرج", upvotes: 0, downvotes: 0, isSaved: false)]),
    DataModel(word: "اغبش", region: "منطقة عسير", meanings: [MeaningModel(meaning: "مظلم", upvotes: 0, downvotes: 0, isSaved: false)]),
    DataModel(word: "فاهي", region: "منطقة عسير", meanings: [MeaningModel(meaning: "بارد وبليد", upvotes: 0, downvotes: 0, isSaved: false)]),
    DataModel(word: "اطمر", region: "منطقة عسير", meanings: [MeaningModel(meaning: "ادفن", upvotes: 0, downvotes: 0, isSaved: false)]),
    
    
    DataModel(word: "وراه", region: "منطقة القصيم", meanings: [MeaningModel(meaning: "هي كلمة في بعض مناطق نجد تقال للتساؤل عن العلة والسبب. يرادفها في العامية  ليه؟ و ليش؟وفي الفصحى: ماذا؟ أو  ما السبب؟",example: "وراه ما جاء معكم", upvotes: 0, downvotes: 0, isSaved: true)]),
    DataModel(word: "اولاه", region: "منطقة القصيم", meanings: [MeaningModel(meaning: "ارجوك",example: "اولاه جب لي معك", upvotes: 0, downvotes: 0, isSaved: false)]),
    DataModel(word: "طمبس", region: "منطقة القصيم", meanings: [MeaningModel(meaning: "اخفض راسك", upvotes: 0, downvotes: 0, isSaved: false)]),
    DataModel(word: "مبوبز", region: "منطقة القصيم", meanings: [MeaningModel(meaning: "جالس", upvotes: 0, downvotes: 0, isSaved: false)]),
    DataModel(word: "نهزي", region: "منطقة القصيم", meanings: [MeaningModel(meaning: "نظفي المواعين", upvotes: 0, downvotes: 0, isSaved: false)]),
    DataModel(word: "شدوق", region: "منطقة القصيم", meanings: [MeaningModel(meaning: "خدود", upvotes: 0, downvotes: 0, isSaved: false)]),
    DataModel(word: "وشكارك", region: "منطقة القصيم", meanings: [MeaningModel(meaning: "مالك دخل", upvotes: 0, downvotes: 0, isSaved: false)]),
    DataModel(word: "ادن", region: "منطقة القصيم", meanings: [MeaningModel(meaning: "اقترب",example: "ادن لي", upvotes: 0, downvotes: 0, isSaved: false)]),
    DataModel(word: "يبزخ", region: "منطقة القصيم", meanings: [MeaningModel(meaning: "يسقط", upvotes: 10, downvotes: 1, isSaved: false)]),
    DataModel(word: "قوطي", region: "منطقة القصيم", meanings: [MeaningModel(meaning: "علبة", upvotes: 0, downvotes: 0, isSaved: false)]),
    DataModel(word: "اهوه", region: "منطقة القصيم", meanings: [MeaningModel(meaning: "اعطيني", upvotes: 43, downvotes: 9, isSaved: false)]),
    DataModel(word: "انغزوه", region: "منطقة القصيم", meanings: [MeaningModel(meaning: "اضغطه", upvotes: 0, downvotes: 0, isSaved: false)]),
    DataModel(word: "تسنه", region: "منطقة القصيم", meanings: [MeaningModel(meaning: "مقارب له أو شبيه", upvotes: 0, downvotes: 0, isSaved: false)]),
    DataModel(word: "هجه", region: "منطقة القصيم", meanings: [MeaningModel(meaning: "افتحه",example: "هج الباب", upvotes: 0, downvotes: 0, isSaved: false)]),
    DataModel(word: "بساقتوه", region: "منطقة القصيم", meanings: [MeaningModel(meaning: "خلفه",example: "كان يمشي خلفه", upvotes: 0, downvotes: 0, isSaved: false)]),
    DataModel(word: "يلفز", region: "منطقة القصيم", meanings: [MeaningModel(meaning: "يخبي",example: "يلفز فلوسه", upvotes: 0, downvotes: 0, isSaved: false)]),
    DataModel(word: "كود", region: "منطقة القصيم", meanings: [MeaningModel(meaning: "يا ليت",example: "كود اروح معهم", upvotes: 0, downvotes: 0, isSaved: false)]),
    DataModel(word: "مسط", region: "منطقة القصيم", meanings: [MeaningModel(meaning: "سقط بدون ارادته", upvotes: 0, downvotes: 0, isSaved: false)]),
    
    
    DataModel(word: "اشبح", region: "منطقة مكة المكرمة", meanings: [MeaningModel(meaning: "انظر", upvotes: 10, downvotes: 0, isSaved: false)]),
    DataModel(word: "اشبك", region: "منطقة مكة المكرمة", meanings: [MeaningModel(meaning: "ماذا بك", upvotes: 50, downvotes: 1, isSaved: false)]),
    DataModel(word: "مصرفدة", region: "منطقة مكة المكرمة", meanings: [MeaningModel(meaning: "مستعجلة",example: "ليه مصرفدة", upvotes: 0, downvotes: 0, isSaved: false)]),
    DataModel(word: "ناولني", region: "منطقة مكة المكرمة", meanings: [MeaningModel(meaning: "اعطيني",example: "ناولني الصحن", upvotes: 0, downvotes: 0, isSaved: true)]),
    DataModel(word: "اتلحلح", region: "منطقة مكة المكرمة", meanings: [MeaningModel(meaning: "اتحرك", upvotes: 0, downvotes: 0, isSaved: false)]),
    DataModel(word: "زقاق", region: "منطقة مكة المكرمة", meanings: [MeaningModel(meaning: "الشارع الصغير", upvotes: 0, downvotes: 0, isSaved: false)]),
    DataModel(word: "ضعاوي", region: "منطقة مكة المكرمة", meanings: [MeaningModel(meaning: "كلام فارغ", upvotes: 0, downvotes: 0, isSaved: false)]),
    DataModel(word: "كلحوس", region: "منطقة مكة المكرمة", meanings: [MeaningModel(meaning: "بخيل", upvotes: 0, downvotes: 0, isSaved: false)]),
    DataModel(word: "زكن عليه", region: "منطقة مكة المكرمة", meanings: [MeaningModel(meaning: "نبهه او ذكره بشيء معين", upvotes: 0, downvotes: 0, isSaved: false)]),
    DataModel(word: "يتتريق", region: "منطقة مكة المكرمة", meanings: [MeaningModel(meaning: "يستهزئ", upvotes: 0, downvotes: 0, isSaved: false)]),
    DataModel(word: "كندره", region: "منطقة مكة المكرمة", meanings: [MeaningModel(meaning: "جزمه", upvotes: 0, downvotes: 0, isSaved: false)]),
    
    

    DataModel(word: "أهقا", region: "منطقة الاحساء", meanings: [MeaningModel(meaning: "أصدق", upvotes: 10, downvotes: 0, isSaved: false)]),
    DataModel(word: "يزنط", region: "منطقة الاحساء", meanings: [MeaningModel(meaning: "يخنق", upvotes: 30, downvotes: 5, isSaved: false)]),
    DataModel(word: "ذبي", region: "منطقة الاحساء", meanings: [MeaningModel(meaning: "ارمي", example: "ذبي المنديل", upvotes: 0, downvotes: 0, isSaved: false)]),
    DataModel(word: "يتصوخ", region: "منطقة الاحساء", meanings: [MeaningModel(meaning: "يتسمع", upvotes: 12, downvotes: 0, isSaved: false)]),
    DataModel(word: "عنت عليّ", region: "منطقة الاحساء", meanings: [MeaningModel(meaning: "تمنيته", upvotes: 0, downvotes: 0, isSaved: true)]),
    DataModel(word: "مشقوق", region: "منطقة الاحساء", meanings: [MeaningModel(meaning: "ممزق", upvotes: 0, downvotes: 0, isSaved: false)]),
    DataModel(word: "طرطور", region: "منطقة الاحساء", meanings: [MeaningModel(meaning: "ماعنده شخصية", upvotes: 23, downvotes: 1, isSaved: false)]),
    DataModel(word: "تزهب", region: "منطقة الاحساء", meanings: [MeaningModel(meaning: "تجهز", example: "تزهب بنطلع الليلة", upvotes: 10, downvotes: 1, isSaved: false)]),
    DataModel(word: "تتحيقين", region: "منطقة الاحساء", meanings: [MeaningModel(meaning: "تستحين", upvotes: 0, downvotes: 0, isSaved: false)]),
    DataModel(word: "صيختك", region: "منطقة الاحساء", meanings: [MeaningModel(meaning: "فشلتك", example: "صيختني قدام الناس", upvotes: 0, downvotes: 0, isSaved: false)])

]

@Published var regions = ["منطقة الرياض","منطقة مكة المكرمة","منطقة عسير","منطقة القصيم","منطقة الاحساء","جميع المناطق"]

    
    func upvoteMeaning(atWordIndex wordIndex: Int, meaningIndex: Int) {
        allWords[wordIndex].meanings[meaningIndex].upvote()
    }

    func downvoteMeaning(atWordIndex wordIndex: Int, meaningIndex: Int) {
        allWords[wordIndex].meanings[meaningIndex].downvote()
    }

    func flagMeaning(atWordIndex wordIndex: Int, meaningIndex: Int) {
        // Implement flagging logic here
    }

    func toggleSavedState(atWordIndex wordIndex: Int, meaningIndex: Int) {
       // allWords[wordIndex].meanings[meaningIndex].isSaved.toggle()
        if allWords[wordIndex].meanings[meaningIndex].isSaved{
            allWords[wordIndex].meanings[meaningIndex].isSaved = false
        }else{
            allWords[wordIndex].meanings[meaningIndex].isSaved = true
        }
    }

}

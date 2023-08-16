//
//  ContentView.swift
//  Raseen
//
//  Created by Leena Almatar on 15/01/1445 AH.
//
import SwiftUI

struct HomeView: View {
    let words = ["اولاه", "اطمر", "تروكع", "فاهي", "اشبح", "اغبش"]
    let city = ["عسير", "الشرقية", "الرياض", "القصيم", "حائل", "مكة المكرمة"]
    @ObservedObject var viewModel: DataViewModel
    @State private var isImageClicked = false
    @State private var selectedRegion: String? = nil
    var body: some View {
        NavigationView {
            ScrollView{
                Image("Raseen")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode:.fit)
                    .padding(29)
               
                
                VStack(spacing: 50) {
                    Spacer()
                    Button(action: {
                        self.isImageClicked.toggle()
                    }) {
                        Image("saudi map")
                            .resizable()
                            .frame(width: 390, height: 400)
                    }
                    
                    Text("الكلمات الاكثر تفاعلاً")
                        .foregroundStyle(.brown)
                        .font(.largeTitle)
                        .frame(width: 350, height: 30)
                
                    
                    VStack(spacing: 15) {
                        HStack(spacing: -20) {
                            Button("\(words[0])") {
                                
                            }
                            .foregroundStyle(.brown)
                            .frame(width: 130, height: 50, alignment: .center)
                            .buttonStyle(.borderedProminent)
                            .tint(.white)
                            
                            Button("\(words[1])") {
                                
                            }
                            .foregroundStyle(.brown)
                            .frame(width: 130, height: 50, alignment: .center)
                            .buttonStyle(.borderedProminent)
                            .tint(.white)
                            
                            Button("\(words[2])") {
                                
                            }
                            .foregroundStyle(.brown)
                            .frame(width: 130, height: 50, alignment: .center)
                            .buttonStyle(.borderedProminent)
                            .tint(.white)
                        }
                        
                        HStack(spacing: -20) {
                            Button("\(words[3])") {
                                
                            }
                            .foregroundStyle(.brown)
                            .frame(width: 130, height: 50)
                            .buttonStyle(.borderedProminent)
                            .tint(.white)
                            
                            Button("\(words[4])") {
                                
                            }
                            .foregroundStyle(.brown)
                            .frame(width: 130, height: 50, alignment: .center)
                            .buttonStyle(.borderedProminent)
                            .tint(.white)
                            
                            Button("\(words[5])") {
                                
                            }
                            .foregroundStyle(.brown)
                            .frame(width: 130, height: 50, alignment: .center)
                            .buttonStyle(.borderedProminent)
                            .tint(.white)
                        }
                        
                    }
                    .foregroundStyle(.brown)
                    .frame(width: 350, height: 130)
                    .background(RoundedRectangle(cornerRadius: 16).fill(.brown))
                    
                    
                    // Second list
                    Text("المناطق الاكثر تفاعلاً")
                        .foregroundStyle(.brown)
                        .font(.largeTitle)
                        .frame(width: 350, height: 30)
                        .padding(10)
                    
                    VStack(spacing: 15) {
                        HStack(spacing: -20) {
                            
                                Button("\(city[0])") {
                                   
                                }
                                .foregroundStyle(.brown)
                                .frame(width: 130, height: 50, alignment: .center)
                                .buttonStyle(.borderedProminent)
                                .tint(.white)
                            
                            Button("\(city[1])") {
                                
                            }
                            .foregroundStyle(.brown)
                            .frame(width: 130, height: 50, alignment: .center)
                            .buttonStyle(.borderedProminent)
                            .tint(.white)
                            
                            Button("\(city[2])") {
                                
                            }
                            .foregroundStyle(.brown)
                            .frame(width: 130, height: 50, alignment: .center)
                            .buttonStyle(.borderedProminent)
                            .tint(.white)
                        }
                        
                        HStack(spacing: -20) {
                            Button("\(city[3])") {
                                
                            }
                            .foregroundStyle(.brown)
                            .frame(width: 130, height: 50)
                            .buttonStyle(.borderedProminent)
                            .tint(.white)
                            
                            Button("\(city[4])") {
                                
                            }
                            .foregroundStyle(.brown)
                            .frame(width: 130, height: 50, alignment: .center)
                            .buttonStyle(.borderedProminent)
                            .tint(.white)
                            
                            Button("\(city[5])") {
                                
                            }
                            .foregroundStyle(.brown)
                            .frame(width: 130, height: 50, alignment: .center)
                            .buttonStyle(.borderedProminent)
                            .tint(.white)
                        }
                        
                    }
                    .foregroundStyle(.brown)
                    .frame(width: 350, height: 130)
                    .background(RoundedRectangle(cornerRadius: 16).fill(.brown))
                }
            }
                    Button(action: {isImageClicked = true
                             }) {Text("اختر منطقتك")
                                            .foregroundColor(.white)
                                            .font(.title)
                                            .frame(width: 350, height: 70)
                                            .background(RoundedRectangle(cornerRadius: 16).fill(.brown))
                             }
                                    }
                             .sheet(isPresented: $isImageClicked) {
                                 PopupView(viewModel: viewModel, selectedRegion: $selectedRegion)
        }
    }
     
    
struct PopupView: View {
    @ObservedObject var viewModel: DataViewModel
    @Binding var selectedRegion: String?
    var body: some View {
        NavigationView {
           
            List {
                
                ForEach(viewModel.regions, id: \.self) { region in
                    Button(action: {
                        selectedRegion = region
                    }) {
                        Text(region)
                            .foregroundColor(selectedRegion == region ? .brown : .black)
                    }
                }
            }
            .navigationBarTitle("اختر منطقتك")
            
            .navigationBarItems(trailing: NavigationLink("تم", destination: WordList(viewModel: viewModel, selectedRegion: $selectedRegion)))
            .environment(\.layoutDirection, .rightToLeft)
            
        }
    }
}
 
    struct HomeView_Previews: PreviewProvider {
        static var previews: some View {
            HomeView(viewModel: DataViewModel())
        }
    }
    
    
}

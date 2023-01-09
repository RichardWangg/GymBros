//
//  HomeView.swift
//  newnew
//
//  Created by Richard on 2023-01-05.
//  Copyright © 2023 Richard. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack (alignment: .topLeading) {
            Color.purple
                .edgesIgnoringSafeArea(.top)
            HStack {
                Button(action: {
                    self.showSheet.toggle()
                }, label: {
                    Text("Workouts")
                        .foregroundColor(.purple)
                        .font(.headline)
                        .frame(width: 95, height: 40)
                        .background(Color.black)
                        .cornerRadius(15)
                        .padding()
                    
                })
                Spacer()
                Button(action: {
                    //edit calendar
                    
                }, label: {
                    Text("Edit")
                        .foregroundColor(.purple)
                        .font(.headline)
                        .frame(width: 95, height: 40)
                        .background(Color.black)
                        .cornerRadius(15)
                        .padding()
                    
                })
                    
                    .sheet(isPresented: $showSheet, content: {
                        workoutsList()
                    })
            }
        }
    }
}
//old copy
//struct workoutsList: View {
//    @State var workouts: [String] = ["test"]
//
//    init() {
//        UITableView.appearance().backgroundColor = .black
//        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
//    }
//
//    var body: some View {
//        NavigationView {
//            List {
//                ForEach(workouts, id: \.self) { workouts in
//                    Text(workouts.capitalized)
//                        .foregroundColor(.white)
//                        .listRowBackground(Color.black)
//                }
//                .onDelete(perform: { indexSet in
//                    self.workouts.remove(atOffsets: indexSet)
//                })
//                    .onMove(perform: {indices, newOffset in
//                        self.workouts.move(fromOffsets: indices, toOffset: newOffset)
//                    })
//            }
//            .navigationBarTitle("Workouts")
//            .navigationBarItems(leading: EditButton(),
//                                trailing:
//                Button("Add", action: {
//                    self.workouts.append("make function to call for text prompt")
//                })
//            )
//        }
//        .accentColor(.purple)
//    }
//}

struct workoutsList: View {
    @State private var showPopUp: Bool = false
    @State var workouts: [String] = ["test"]
    
    init() {
        UITableView.appearance().backgroundColor = .black
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
    }
    
    var body: some View {
        ZStack {
            NavigationView {
                List {
                    ForEach(workouts, id: \.self) { workouts in
                        Text(workouts.capitalized)
                            .foregroundColor(.white)
                            .listRowBackground(Color.black)
                    }
                    .onDelete(perform: { indexSet in
                        self.workouts.remove(atOffsets: indexSet)
                    })
                        .onMove(perform: {indices, newOffset in
                            self.workouts.move(fromOffsets: indices, toOffset: newOffset)
                        })
                }
                .navigationBarTitle("Workouts")
                .navigationBarItems(leading: EditButton(),
                                    trailing:
                    Button("Add", action: {
                        withAnimation(.linear(duration: 0.3)) {
                            self.showPopUp.toggle() }
                    })
                )
            }
            .accentColor(.purple)
            PopUpWindow(title: "Error", message: "Sorry, that email address is already used!", buttonText: "OK", show: $showPopUp)
        }
    }
}

struct PopUpWindow: View {
    var title: String
    var message: String
    var buttonText: String
    @Binding var show: Bool
    var body: some View {
        ZStack {
            if show {
                // PopUp background color
                Color.black.opacity(show ? 0.3 : 0).edgesIgnoringSafeArea(.all)
                // PopUp Window
                VStack(alignment: .center, spacing: 0) {
                    Text(title)
                        .frame(maxWidth: .infinity)
                        .frame(height: 45, alignment: .center)
                        .font(Font.system(size: 23, weight: .semibold))
                        .foregroundColor(Color.white)
//                        .background(Color(#colorLiteral(red: 0.3179988265, green: 0.3179988265, blue: 0.3179988265, alpha: 1)))
                    Text(message)
                        .multilineTextAlignment(.center)
                        .font(Font.system(size: 16, weight: .semibold))
                        .padding(EdgeInsets(top: 20, leading: 25, bottom: 20, trailing: 25))
                        .foregroundColor(Color.white)
                    Button(action: {
                        // Dismiss the PopUp
                        withAnimation(.linear(duration: 0.3)) {
                            self.show = false
                        }
                    }, label: {
                        Text(buttonText)
                            .frame(maxWidth: .infinity)
                            .frame(height: 54, alignment: .center)
                            .foregroundColor(Color.white)
//                            .background(Color(#colorLiteral(red: 0.3179988265, green: 0.3179988265, blue: 0.3179988265, alpha: 1)))
                            .font(Font.system(size: 23, weight: .semibold))
                            .cornerRadius(30)
                    })
                }
                .frame(maxWidth: 300)
                .background(Color(#colorLiteral(red: 0.3179988265, green: 0.3179988265, blue: 0.3179988265, alpha: 1)))
                .cornerRadius(15)
            }
        }
    }
}



//struct WorkoutPopup: View {
//    @State var textFieldText: String = ""
//    var body: some View {
//        ZStack {
//        TextField("Enter", text: $textFieldText)
//        }
//        .frame(width: 200, height: 200)
//    }
//
//}
//struct workoutContent: View {
//    @State var workouts: [
//
//    var body: some View {
//        List (0..<10) { item in
//            Color.black
//            Text("Workouts")
//                .font(.title)
//        }
//    }
//
//}

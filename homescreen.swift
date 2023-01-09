////
////  homescreen.swift
////  newnew
////
////  Created by Richard on 2023-01-04.
////  Copyright © 2023 Richard. All rights reserved.
////
//import SwiftUI
//
//struct homescreen: View {
//    @State var menuOpened = false
//    var body: some View {
//        ZStack (alignment: .topLeading) {
//            if !menuOpened {
//                Color.purple
//                HStack {
//                    Button(action: {
//                        //open sidemenu
//                        self.menuOpened.toggle()
//                    }) {
//                        Text("Workouts")
//                            .foregroundColor(.purple)
//                            .frame(width: 95, height: 40)
//                            .background(Color.black)
//                            .cornerRadius(15)
//                            .padding()
//                    }
//                    Spacer()
//                    Button(action: {
//                        //edit calendar
//                        print("edit caledar")
//                    }) {
//                        Text("Edit")
//                            .foregroundColor(.purple)
//                            .frame(width: 95, height: 40)
//                            .background(Color.black)
//                            .cornerRadius(15)
//                            .padding()
//                    }
//                }
//            }
//            sideMenu(width: UIScreen.main.bounds.width/1, menuOpened: menuOpened, toggleMenu: toggleMenu)
//        }
//       // .frame(maxWidth: .infinity, maxHeight: .infinity)
//    }
//
////    func toggleMenu() {
////        menuOpened.toggle()
////    }
////}
////
////struct sideMenu: View {
////    let width: CGFloat
////    let menuOpened: Bool
////    let toggleMenu: () -> Void
////
////    var body: some View {
////        ZStack {
////            //background view
////            GeometryReader { _ in
////                EmptyView()
////            }
////            .animation(Animation.easeIn.delay(0.25))
////            .onTapGesture {
////                self.toggleMenu()
////            }
////
////            //sideontent
////            HStack {
////                sideContent()
//////                    .frame(width: width)
////                    .offset(x:menuOpened ? 0: -width)
////                    .animation(.default)
////                Spacer()
////            }
////        }
////    }
////}
////
////struct sideItem: Identifiable {
////    var id = UUID()
////    let text: String
////    let handler: () -> Void = {
////        print("workout details")
////        //
////    }
////}
////
////struct sideContent: View {
////    let items: [sideItem] = [
////        sideItem(text: "first"),
////        sideItem(text: "second"),
////    ]
////    var body: some View {
////        ZStack {
////            Color.black
////            VStack (alignment: .leading, spacing: 0) {
////                ForEach(items) { item in
////                    HStack {
////                        Text(item.text)
////                            .foregroundColor(Color.white)
////                            .font(.system(size: 20))
////                            .multilineTextAlignment(.leading)
////                        Spacer()
////                    }
////                    .onTapGesture {
////
////                    }
////                    .padding()
////                }
////
////                Spacer()
////            }
////        }
////    }
////}

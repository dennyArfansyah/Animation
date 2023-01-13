//
//  ContentView.swift
//  Animation
//
//  Created by Denny Arfansyah on 14/01/23.
//

import SwiftUI

struct ContentView: View {
    let letters = Array("Hello, SwiftUI")
    @State private var enable = false
    @State private var dragAmount = CGSize.zero
    @State private var isShowingRed = false
    
    var body: some View {
        VStack {
            Button("Tap Me") {
                withAnimation {
                    isShowingRed.toggle()
                }
            }
            
            if isShowingRed {
                Rectangle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
//                    .transition(.scale)
                    .transition(.asymmetric(insertion: .scale, removal: .opacity))
            }
        }
        
        
//        HStack(spacing: 0) {
//            ForEach(0..<letters.count) { num in
//                Text(String(letters[num]))
//                    .padding(5)
//                    .font(.title)
//                    .background(enable ? .blue : .red)
//                    .offset(dragAmount)
//                    .animation(
//                        .default.delay(Double(num) / 20),
//                        value: dragAmount
//                    )
//            }
//        }
//        .gesture(
//            DragGesture()
//                .onChanged { dragAmount = $0.translation }
//                .onEnded { _ in
//                    dragAmount = CGSize.zero
//                    enable.toggle()
//                }
//        )
        
//        LinearGradient(colors: [.yellow, .blue], startPoint: .topLeading, endPoint: .bottomTrailing)
//            .frame(width: 300, height: 300)
//            .clipShape(RoundedRectangle(cornerRadius: 20))
//            .offset(dragAmount)
//            .gesture(
//                DragGesture()
//                    .onChanged { dragAmount = $0.translation }
//                    .onEnded { _ in dragAmount = CGSize.zero }
//                )
        
//        Button("Tapped Me") {
//            enable.toggle()
//        }
//        .frame(width: 200, height: 200)
//        .background(enable ? .red: .blue)
//        .animation(nil, value: enable)
//        .foregroundColor(.white)
//        .clipShape(RoundedRectangle(cornerRadius: enable ? 60: 0))
//        .animation(.interpolatingSpring(stiffness: 50, damping: 1), value: enable)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

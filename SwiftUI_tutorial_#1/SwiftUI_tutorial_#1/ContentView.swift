//
//  ContentView.swift
//  SwiftUI_tutorial_#1
//
//  Created by KIM JIWON on 6/23/25.
//

import SwiftUI

struct ContentView: View {
    // @State: 값의 변화를 감지(UI와 연결된 상태 값을 감지) -> view에 적용
    @State private var isActivated: Bool = false
    
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    MyVstackView(isActivated: $isActivated)
                    MyVstackView(isActivated: $isActivated)
                    MyVstackView(isActivated: $isActivated)
                    // $: 해당 변수에 Binding 형태를 만든다는 뜻
                }
                .padding(isActivated ? 50.0 : 10.0)
                .background(isActivated ? Color.yellow : Color.black)
                // add tap gesture
                .onTapGesture {
                    print("HStack이 클릭되었다.")
                    
                    // with animation
                    withAnimation {
                        // toggle()이면 true는 false로 false는 true로
                        self.isActivated.toggle()
                    }
                } // HStack
                
                // Navigation button(link)
                NavigationLink(destination: MyTextView(isActivated: $isActivated)){
                    Text("Navigation")
                        .fontWeight(.heavy)
                        .font(.system(size: 30))
                        .padding()
                        .background(Color.orange)
                        .foregroundStyle(.white)
                        .cornerRadius(30)
                } .padding(.top, 50)
            }
            
        } // NavigationView
    }
}

#Preview {
    ContentView()
}

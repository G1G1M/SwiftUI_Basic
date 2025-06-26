//
//  MyTextView.swift
//  SwiftUI_tutorial_#1
//
//  Created by KIM JIWON on 6/24/25.
//

import SwiftUI

struct MyTextView: View {
    
    // 데이터를 연동시킨다
    @Binding
    var isActivated: Bool
    
    // 생성자
    init(isActivated: Binding<Bool> =
        .constant(true)) {
            _isActivated = isActivated // 초기화 코드
        }
    
    // @State: 값의 변화를 감지(UI와 연결된 상태 값을 감지) -> view에 적용
    @State private var index: Int = 0

    // 배경색 배열 준비
    private let backgroundColors = [
        Color.red,
        Color.yellow,
        Color.blue,
        Color.green,
        Color.orange,
    ]
    
    var body: some View {
        VStack{
            
            Spacer()
            
            Text("배경 아이템 인덱스 \(self.index )")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 100)
            
            Text("활성화 상태: \(String(isActivated))")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .foregroundStyle(self.isActivated ? Color.yellow : Color.gray)
                .background(Color.black)
            
            Spacer()
        } .background(backgroundColors[index])
//            .edgesIgnoringSafeArea(.top)
            .onTapGesture {
                print("배경 아이템이 클릭되었다.")
                if(self.index == self.backgroundColors.count - 1){
                    self.index = 0
                } else {
                    self.index += 1
                }
            }
    }
}

struct MyTextView_Previews: PreviewProvider {
    static var previews: some View {
        MyTextView()
    }
}

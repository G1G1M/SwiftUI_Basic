//
//  ContentView.swift
//  SwiftUI_Text_tutorial
//
//  Created by KIM JIWON on 6/26/25.
//

import SwiftUI

struct ContentView: View {
    
    static let dateFormat: DateFormatter = {
       let formatter = DateFormatter()
        formatter.dateFormat = "YYYY년 M월 d일" // Custom
//        formatter.dateStyle = .long // 정해진 style
        return formatter
    }()
    
    var today = Date() // 오늘의 날짜
    var trueOrFalse: Bool = false // T or F
    var number: Int = 123
    
    var body: some View {
        VStack {
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,")
                .tracking(5) // 글자 사이 간격
                
                .font(.system(.body, design: .monospaced)) // 글자 크기 & 글꼴
                .fontWeight(.medium) // 글자 굵기
                .multilineTextAlignment(.center)
                .lineLimit(nil) // nil은 기본적으로 multiline
                .lineSpacing(10) // 글자 간격
                .shadow(color: Color.red, radius: 1.5, x: -10, y: 10) // 글자 그림자
                .truncationMode(.middle) // 텍스트가 넘칠 때 어디를 생략할 지 정함
            
                .padding(20)
                .background(Color.yellow)
                .cornerRadius(10)
            
                .padding()
                .background(Color.green)
                .cornerRadius(20)
            
                .padding()
                
            Text("안녕하세요!!")
                .background(Color.gray)
                .foregroundColor(Color.white)
                .padding()
            
            Text("오늘의 날짜는 \(today, formatter: ContentView.dateFormat)") // formatter로 dateFormat으로 만들어둔 내용을 가져옴
                .padding()
            
            Text("T or F: \(String(trueOrFalse))")
            
            Text("숫자입니다: \(number)")
        }
        
    }
}

#Preview {
    ContentView()
}

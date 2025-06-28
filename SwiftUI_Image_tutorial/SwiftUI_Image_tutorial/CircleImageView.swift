//
//  CircleImageView.swift
//  SwiftUI_Image_tutorial
//
//  Created by KIM JIWON on 6/27/25.
//

import SwiftUI

struct CircleImageView: View {
    var body: some View {
//        Image(systemName: "bolt.circle")
//            .font(.system(size: 200))
//            .foregroundColor(.yellow)
//            .shadow(color: .gray, radius: 2, x: 2, y: 10)
        Image("hanni")
            .resizable() // 이미지 조절 가능하도록 설정
            .scaledToFill() // (=aspectRatio)
            .frame(width: 300, height: 300) // 이미지 크기 조절
            .clipShape(Circle()) // 이미지 모양 설정
            .shadow(color: .gray, radius: 10, x: 5, y: 10)
        
            .overlay(
                Circle().foregroundStyle(.black)
                    .opacity(0.3)
            )
        
            .overlay(Circle()
                .stroke(Color.orange, lineWidth: 10)
                .padding())
        
            .overlay(Circle()
                .stroke(Color.yellow, lineWidth: 10)
                .padding(30))
        
            .overlay(Circle()
                .stroke(Color.blue, lineWidth: 10))
        
            .overlay(Text("HANNI")
                .foregroundColor(.white)
                .font(.system(size: 50))
                .fontWeight(.bold)
            )
//            .aspectRatio(contentMode: .fill) // 비율 조정
//            .clipped() // 이미지 자르기
//            .edgesIgnoringSafe Area(.all) // 시스템 영역
        
    }
}

#Preview {
    CircleImageView()
}

//
//  ContentView.swift
//  SwiftUI_Image_tutorial
//
//  Created by KIM JIWON on 6/26/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                Image("hanni2")
                    .scaledToFill()
                    .frame(height: 10)
                    .offset(y: 40)
                CircleImageView()
                HStack{
                    NavigationLink(destination: MyWebView(urlToLoad: "https://www.newjeans.kr")
                    ){
                        Text("NJZ Home")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .background(.green)
                            .cornerRadius(20)
                    }
                    NavigationLink(destination: MyWebView(urlToLoad: "https://www.youtube.com/watch?v=lmJPeFW75qQ&pp=ygUTaGFubmkg7KeB7LqgIOy_oO2CpA%3D%3D")
                    ){
                        Text("HANNI CAM")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .background(.yellow)
                            .cornerRadius(20)
                    }
                } // HStack
                .padding(40)
            }
        }
    }
}

#Preview {
    ContentView()
}

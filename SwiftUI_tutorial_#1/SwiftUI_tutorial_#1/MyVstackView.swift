import SwiftUI

struct MyVstackView: View {
    
    // 데이터를 연동시킨다
    @Binding
    var isActivated: Bool
    
    // 생성자
    init(isActivated: Binding<Bool> =
        .constant(true)) {
            _isActivated = isActivated // 초기화 코드
        }
    
    
    var body: some View {
        VStack {
            Text("1!")
                .fontWeight(.bold)
                .font(.largeTitle)
            Text("2!")
                .fontWeight(.bold)
                .font(.largeTitle)
            Text("3!")
                .fontWeight(.bold)
                .font(.largeTitle)
        }
        .padding(self.isActivated ? 10.0 : 0.0)
        .background(self.isActivated ? Color.green : Color.red)
    }
}

struct MyVstackView_Previews: PreviewProvider {
    static var previews: some View {
        MyVstackView()
    }
}

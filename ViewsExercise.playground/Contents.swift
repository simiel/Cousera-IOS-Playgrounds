import SwiftUI
import PlaygroundSupport

struct ParentView: View {
    @State var reservedDate = Date()
    var body: some View {
        HStack{
            Rectangle()
                .fill(Color.accentColor)
                .frame(width: 50, height: 50)
            
            Text("Rectangle One")
                .foregroundColor(.white)
                .padding()
                .background(Color.yellow)
            
            Rectangle()
                .fill(Color.blue)
                .frame(width: 100, height: 30)
        }
    }
}

PlaygroundPage.current.setLiveView(ParentView())

import SwiftUI

struct ProgressBarView: View {

    @Binding var value :Double
    var color :Color = .blue
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle()
                    .frame(width: geometry.size.width, height: 25)
                    .opacity(0.2)
                    .foregroundStyle(color)
                    .cornerRadius(10)

                Rectangle()
                    .frame(width: min(CGFloat(self.value) * geometry.size.width, geometry.size.width), height: 25)
                    .foregroundStyle(color)
                    .cornerRadius(10)

                Text("\(Int(self.value * 100))%")
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .padding(.leading, 10)
            }
        }
    }
}

struct ProgressBarView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBarView(value : .constant(0.75))
    }
}


//PUSH CODE LÊN GITHUB NHÉ


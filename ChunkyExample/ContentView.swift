import SwiftUI

struct ContentView: View {
    let foodChoices = ["🌭", "🌮", "🥗", "🍕", "🧇"]

    @State var chunkByCount = 2

    var body: some View {
        VStack {
            HStack {
                ForEach(self.foodChoices, id: \.self) { food in
                    Text(food)
                        .font(.largeTitle)
                }
            }

            Stepper("Groups of \(self.chunkByCount)", value: $chunkByCount, in: 0 ... 5)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

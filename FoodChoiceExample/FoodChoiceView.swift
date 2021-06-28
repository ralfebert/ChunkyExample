import Algorithms
import SwiftUI

struct Food: Identifiable, Hashable {
    var id: String
}

struct FoodChoiceView: View {
    let foodChoices = ["🌭", "🌮", "🥗", "🍕", "🧇", "🥪"]

    @State var chunkByCount = 2

    var body: some View {
        VStack {
            VStack {
                ForEach(self.foodChoices.chunks(ofCount: self.chunkByCount), id: \.self) { chunk in
                    HStack {
                        ForEach(chunk, id: \.self) { food in
                            Text(food)
                                .font(.largeTitle)
                        }
                    }
                }
            }

            Stepper("Chunks of \(self.chunkByCount)", value: $chunkByCount, in: 1 ... 4)
        }
        .padding()
    }
}

struct FoodChoiceView_Previews: PreviewProvider {
    static var previews: some View {
        FoodChoiceView()
    }
}

import SwiftUI

struct LearnList: View {
    var topics = CategoriesData

    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(
                    gradient: Gradient(colors: [
                        Color(red: 102/255, green: 45/255, blue: 145/255),
                        Color(red: 0, green: 116/255, blue: 178/255)
                    ]),
                    startPoint: .topTrailing,
                    endPoint: .bottomLeading
                )
                .ignoresSafeArea()

                VStack {
                    Spacer()

                    List {
                        ForEach(CategoriesData) { category in
                            Section(header: Text(category.title)) {
                                ForEach(category.topics) { topic in
                                    TopicRow(topic: topic)
                                        .padding(.vertical,2)
                                        .background(Color.white.opacity(0.1))
                                        .cornerRadius(8)
                                        .shadow(color: .black.opacity(0.2), radius: 3, x: 0, y: 2)
                                }
                            }
                        }
                        .listStyle(InsetGroupedListStyle())
                    }
                    .background(Color.clear) // Set List background to clear
                }
            }
            .navigationBarTitle("Learn SAT Topics")
        }
    }
}

struct LearnList_Previews: PreviewProvider {
    static var previews: some View {
        LearnList(topics: CategoriesData)
    }
}



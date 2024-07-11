import SwiftUI

struct ExplanationView: View {
    let question: String
    let explanation: String
    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(
                    gradient: Gradient(colors: [Color(red: 102/255, green: 45/255, blue: 145/255),
                                                Color(red: 0, green: 116/255, blue: 178/255)]),
                    startPoint: .bottomTrailing,
                    endPoint: .topLeading
                )
                .ignoresSafeArea()

                VStack(spacing: 20) {
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Question")
                            .foregroundColor(.white)
                            .font(.headline)
                        
                        Text(question)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.black.opacity(0.5))
                            .cornerRadius(15)
                            .padding()
                    }
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Solution")
                            .foregroundColor(.white)
                            .font(.headline)
                        
                        Text(explanation)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                            .padding()
                    }

                    Spacer()
                }
                .padding()
                .padding(.horizontal)
            }
            .navigationBarTitle("Explanation")
        }
    }
}

struct ExplanationView_Previews: PreviewProvider {
    static var previews: some View {
        ExplanationView(question: "What is !=1", explanation: "Area of a circle = πr^2 \n 49π = πr^2 \n 49 = r^2 \n r =7 \n Once you have the radius of the circle, use the solve for the circumference. \n Circumference = 2πr = 2π(7) = 14π")
    }
}


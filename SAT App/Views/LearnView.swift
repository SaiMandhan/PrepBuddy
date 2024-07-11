import SwiftUI

struct LearnView: View {
    let subject: String
    let text: String
    let ID1: String
    let ID2: String
    
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color(red: 102/255, green: 45/255, blue: 145/255),
                                            Color(red: 0, green: 116/255, blue: 178/255)]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            VStack {
                Text((subject))
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .padding(.horizontal)
                    .padding(.top, 1) // Minimal padding just to ensure text is not completely against the edge
                
                ScrollView {
                    Text(text)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding()
                }
                .background(Color.black.opacity(0.3))
                .cornerRadius(15)
                .frame(maxWidth: 360)
                .frame(maxHeight: 120)
                .padding(.horizontal)
                
                Spacer()
                
                Text("Ready To Practice?")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.bottom, 1)
                
                
                TabView {
                                    ForEach(1...2, id: \.self) { index in
                                        VStack() {
                                            Text("Example Problem #\(index)")
                                                .font(.title3)
                                                .fontWeight(.semibold)
                                                .foregroundColor(.white)
                                                //.padding(.top, 10)
                                            
                                            // Conditionally show video based on index
                                            if index == 1 {
                                                Text("Difficulty Level: Easy")
                                                    .font(.caption)
                                                    .fontWeight(.bold)
                                                    .foregroundColor(.white)
                                                    .padding(.top, 3)
                                                VideoView(videoID: ID1)
                                                    .frame(maxHeight: 200)
                                                    .cornerRadius(10)
                                                    .padding(.horizontal, 20)
                                            } else {
                                                Text("Difficulty Level: Hard")
                                                    .font(.caption)
                                                    .fontWeight(.bold)
                                                    .foregroundColor(.white)
                                                    .padding(.top, 3)
                                                VideoView(videoID: ID2)
                                                    .frame(maxHeight: 200)
                                                    .cornerRadius(10)
                                                    .padding(.horizontal, 20)
                                            }
                                        }
                                        .padding(.vertical, 20) // Added more padding for each TabView item

                                        .padding(.horizontal, 10) // Slightly reduce horizontal padding for TabView item
                                    }
                                }
                                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
                                .background(Color.black.opacity(0.3))
                                .cornerRadius(15)
                                .frame(maxWidth: 360)
                                .frame(maxHeight: 400)
                                .padding()
                                
                                Spacer()
                            }
                            .padding(.horizontal)
                        }
                    }
                }

                struct LearnView_Previews: PreviewProvider {
                    static var previews: some View {
                        LearnView(subject: "Parabolas", text: "In mathematics, a parabola is a plane curve which is mirror-symmetrical and is approximately U-shaped. It fits several superficially different mathematical descriptions, which can all be proved to define exactly the same curves.", ID1: "M2psX-JwHdE", ID2: "M2psX-JwHdE")
                    }
                }

import SwiftUI

struct ContentView: View {
    @State private var Nos:Int = 0
    @State private var Ellos:Int = 0
    
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .aspectRatio(contentMode: ContentMode.fill)
                .ignoresSafeArea()
            VStack{
                HStack{
                    Spacer()
                    Image("nos")
                        .resizable()
                        .aspectRatio(contentMode: ContentMode.fit)
                        .frame(width: 100, height: 100)
                    Spacer()
                    Image("ellos")
                        .resizable()
                        .aspectRatio(contentMode: ContentMode.fit)
                        .frame(width: 140, height: 100)
                    Spacer()
                }
                HStack{
                    Spacer()
                    Image(String(Nos))
                        .resizable()
                        .aspectRatio(contentMode: ContentMode.fit)
                        .frame(width: 78, height: 575)
                    Spacer()
                    Image(String(Ellos))
                        .resizable()
                        .aspectRatio(contentMode: ContentMode.fit)
                        .frame(width: 78, height: 575)
                    Spacer()
                }
                HStack{ //buttons
                    Button(action: {
                        if(Nos > 0){
                            Nos -= 1
                        }
                    }, label: {
                        Image("substract")
                            .resizable()
                            .aspectRatio(contentMode: ContentMode.fit)
                            .frame(width: 80, height: 80)
                    })
                    Button(action: {
                        if(Nos < 30){
                            Nos += 1
                        }
                    }, label: {
                        Image("add")
                            .resizable()
                            .aspectRatio(contentMode: ContentMode.fit)
                            .frame(width: 80, height: 80)
                    })
                    Button(action: {
                        if(Ellos > 0){
                            Ellos -= 1
                        }
                    }, label: {
                        Image("substract")
                            .resizable()
                            .aspectRatio(contentMode: ContentMode.fit)
                            .frame(width: 80, height: 80)
                    })
                    Button(action: {
                        if(Ellos < 30){
                            Ellos += 1
                        }
                    }, label: {
                        Image("add")
                            .resizable()
                            .aspectRatio(contentMode: ContentMode.fit)
                            .frame(width: 80, height: 80)
                    })
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

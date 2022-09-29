import SwiftUI
import shared

struct ContentView: View {
// 	let greet = Greeting().greeting()
// 	var body: some View {
// 		Text(greet)
// 	}

   let greeting = Greeting()

	@State var greet = "Loading..."
    //@State var greet2 = Todos(userId:0, id:0, title:"Loading...", completed: false)
    @State var greet2: String = "Loading 2..."
    
   func load() {
       greeting.getHtml { result, error in
           if let result = result {
               self.greet = result
           } else if let error = error {
               greet = "Error: \(error)"
           }
       }
   }

   func load2() {
          greeting.getTodo { result, error in
              if let result = result {
                  //self.greet2 = String(result.id) + "->" + result.title + ":" + String(result.completed)
                  self.greet2 = result.description() // same as kotlin .toString()
              } else if let error = error {
                  greet2 = "Error: \(error)"
              }
          }
      }

   var body: some View {
       Text(greet).onAppear() {
           load()
       }
       Text(greet2).onAppear() {
           load2()
       }
   }
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}

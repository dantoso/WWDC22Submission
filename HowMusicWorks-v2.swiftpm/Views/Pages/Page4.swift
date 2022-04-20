import SwiftUI

struct Page4: View {
	
	@EnvironmentObject var viewModel: ViewModel
	@State var showInfo = false
	
	var body: some View {
		
		VStack {
			HStack {
				Button {
					showInfo = true
				} label: {
					Image(systemName: "info.circle")
						.font(Font.system(size: 24))
				}
				Text("Equal temperament")
					.font(.title)
					.padding(.leading)
				Spacer()
			}
			
			WIWideEqualTemp(sound: $viewModel.sound)
			
			Spacer()
		}
		.sheet(isPresented: $showInfo, onDismiss: nil) {
			InfoView4()
		}
		
	}
}


struct InfoView4: View {
	var body: some View {
		VStack {
			Text("Equal temperament")
				.font(.headline)
				.padding()

			Text("\tIf your're really good at maths or already know about tuning, you probably know that pythagorean tuning has a big drawback. When you play in wider ranges using the pythagorean tuning, there are certain fifths that sound extremely bad, which is not supposed to happen, fifths are supposed to sound almost as nice as an octave.")
				.padding()

			Text("\tLooking to solve this problem, many other tuning systems were developed. The one most accepted and popular in western music is the equal temperament. Instead of using multiple ratios to derive the intervals equal temprament only uses the octave ratio (2/1) and inside the first and octave interval it calculates other 10 equally spaced notes. Using this system of equally spaced notes makes it is possible to play any interval with the guarantee that it will sound the same throughout any other range.")
				.padding()
			
			Text("\tHowever, the equal temperament also has a deawback, which is not being mathematically perfect. While the pythagorean tuning is perfect and the waveforms draw consistent patterns (and because of that it sounds brighter), equal temperament uses irrational numbers to tune its notes, which makes some intervals not sound very harmonic (in comparison to pythagorean tuning).")
				.padding()
			
			Text("\tLuckily though, our ears don't care! The difference exists and can be heard, but that doesn't influence much in the way we feel the music. That's why equal temperament works and is used worldwide nowadays.")
				.padding()
			
			Spacer()
		}
	}
}

import SwiftUI

struct Page3: View {
	
	@Binding var sound: Sound
	@State var showInfo = false
	
	var body: some View {
		
		VStack {
			HStack {
				InfoBtn(showInfo: $showInfo)
				
				PageTitle(title: "Equal temperament")
				
				Spacer()
			}
			
			WIEqualTempPickers(sound: $sound)
			
			Spacer()
		}
		.sheet(isPresented: $showInfo, onDismiss: nil) {
			InfoView3()
		}
		
	}
}


struct InfoView3: View {
	var body: some View {
		VStack {
			Text("A bit of history and extra information")
				.font(.headline)
				.padding()
			
			Text("\tIf your're really good at maths or already know about tuning, you probably know that pythagorean tuning has a big drawback.\n\tWhen you play in wider ranges using the pythagorean tuning, there are certain fifths that sound extremely bad, which is not supposed to happen, fifths are supposed to sound almost as nice as an octave.")
				.padding()

			Text("\tLooking to solve this problem, many other tuning systems were developed. The one most accepted and popular in western music is the equal temperament. Instead of using multiple ratios to derive the intervals, in equal temperament every note is equally spaced to the next, making every interval consistent independent of the range.")
				.padding()
			
			Text("\tHowever, equal temperament also has a deawback, which is not being mathematically perfect. While the pythagorean tuning is perfect and the waveforms draw consistent patterns (and because of that it sounds brighter), equal temperament uses irrational numbers to tune its notes, which makes some intervals not sound very harmonic (in comparison to pythagorean tuning).")
				.padding()
			
			Text("\tLuckily though, our ears don't care! The difference exists and can be heard, but that doesn't influence much in the way we feel the music. That's why equal temperament works and is used worldwide nowadays.")
				.padding()
			
			Spacer()
		}
	}
}


import SwiftUI

//WC stands for wave controller

public struct WCPythagorasPickerView: View {
	@Binding var wave: PureWave
	
	public var body: some View {
		VStack(alignment: .leading) {
			Text("\(wave.frequency*100) Hz")
				.padding(.top)
			WaveView(wave: wave)
				.padding(.bottom)
			PythagorasNotePicker(frequency: $wave.frequency)
			
		}
	}
}

public struct WCPythagoreanCommaPickerView: View {
	@Binding var wave: PureWave
	
	public var body: some View {
		VStack(alignment: .leading) {
			Text("\(wave.frequency*100) Hz")
				.padding(.top)
			WaveView(wave: wave)
				.padding(.bottom)
			PythagoreanCommaNotePicker(frequency: $wave.frequency)
			
		}
	}
}
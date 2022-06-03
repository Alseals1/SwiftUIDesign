import SwiftUI

struct TimeSlotPickerView: View {
    var body: some View {
        VStack {
            
            VStack(alignment: .leading) {
                
                VStack(alignment: .leading) {
                    Text("CMX CineBistro Hyde Park ")
                        .custom(font: .medium, size: 24)
                    Text("1.2 mi")
                        .custom(font: .regular, size: 14)
                }
                .padding(.bottom,23)
                
                VStack(alignment: .leading, spacing: 0) {
                    Text("STANDARD FORMAT")
                        .custom(font: .demibold, size: 20)
                        .foregroundColor(Color.baseAccent)
                    Text("STANDARD FORMAT CC, DESCRIPTIVE VIDEO, RESERVED SEATING")
                        .custom(font: .regular, size: 14)
                        .padding(.bottom, 10)
                    
                    
                    HStack(spacing: 10){
                        TimeSlotView()
                        TimeSlotView()
                        TimeSlotView()
                        TimeSlotView()
                        
                    }
                    .padding(.trailing, 6)
                    
                    .padding(.bottom, 10)
                    HStack(spacing: 10){
                        TimeSlotView()
                        TimeSlotView()
                        
                    }
                    Rectangle()
                        .frame(height: 0.5)
                        .foregroundColor(.black)
                        .padding(.vertical, 14)
                    
                    VStack(alignment: .leading, spacing: 0) {
                        Image("real3dimage")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 37.87)
                        
                        Text("STANDARD FORMAT CC, DESCRIPTIVE VIDEO, RESERVED SEATING")
                            .custom(font: .regular, size: 14)
                            .padding(.bottom, 10)
                        HStack{
                            TimeSlotView()
                            TimeSlotView()
                            TimeSlotView()
                        }
                    }
                }
            }
            .padding(.horizontal, 10)
            .padding(.vertical, 20)
            
            
        }
        .background(RoundedRectangle(cornerRadius: 10).fill(Color.baseSecondaryBackground))
    }
}

struct MovieTimeSlotView_Previews: PreviewProvider {
    static var previews: some View {
        TimeSlotPickerView()
            .preferredColorScheme(.dark)
    }
}

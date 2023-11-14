//
//  ContentView.swift
//  swiftPractice
//
//  Created by suhail ahmad on 13/11/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: $isNight)

            VStack {
                Text("Delhi, IN")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundStyle(.white)
                    .padding(10)

                VStack(spacing: 10) {
                    Image(systemName: isNight ? "moon.stars.fill" : "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)

                    Text("76°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                }
                .padding(.bottom, 60)

                HStack(spacing: 15) {
                    ExtractedView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 73)
                    ExtractedView(dayOfWeek: "WED", imageName: "sun.max.fill", temperature: 73)
                    ExtractedView(dayOfWeek: "THUS", imageName: "wind.snow", temperature: 55)
                    ExtractedView(dayOfWeek: "FRI", imageName: "sunset.fill", temperature: 60)
                    ExtractedView(dayOfWeek: "SAT", imageName: "cloud.rain.fill", temperature: 25)
                }
                .padding(.bottom, 60)

                Button("Change Time of the Day") {
                    isNight.toggle()
                }
                .frame(width: 300, height: 50)
                .background(Color.white)
                .foregroundColor(.blue)
                .font(.system(size: 18, weight: .bold))
                .cornerRadius(10)

                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}


struct ExtractedView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 22, weight: .medium))
                .foregroundColor(.white).padding(5)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)°")
                .font(.system(size: 22, weight: .medium))
                .foregroundColor(.white)
        }
    }
}

struct BackgroundView: View {
    @Binding var isNight: Bool

     var body: some View {
 //        LinearGradient(
 //            colors: [isNight ? Color.black : Color.blue, isNight ? Color.gray : Color.white],
 //            startPoint: .topLeading,
 //            endPoint: .bottomTrailing
 //        )
 //        .ignoresSafeArea()
         
             ContainerRelativeShape()
             .fill(isNight ? Color.black.gradient : Color.blue.gradient)
             .ignoresSafeArea()
     }
 }

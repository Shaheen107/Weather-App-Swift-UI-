//
//  ContentView.swift
//  UI practic
//
//  Created by Muhammad Rizwan on 5/27/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, Color("lightBlue") ]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                //text
                Text("Shaheen")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
//                    .background(.red)
//                    .frame(width: 200, height: 200)
//                    .padding(.bottom, 200)
                
                
                VStack(spacing: 5) {
//                    image
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original) // orignal pic color
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    Text("78° ")
                        
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                }
                .padding(.bottom, 40)
                HStack(spacing: 20){
                        WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temprature: 74)
                        WeatherDayView(dayOfWeek: "WED", imageName: "sun.max.fill", temprature: 88)
                        WeatherDayView(dayOfWeek: "THU", imageName: "wind.snow", temprature: 65)
                        WeatherDayView(dayOfWeek: "FRI", imageName: "sunset.fill", temprature: 50)
                        WeatherDayView(dayOfWeek: "SAU", imageName: "snowflake", temprature: 25)
                }
                Spacer() // make the element to the top
                Button{
                    print("tapped")
                } label: {
                    Text("Change Date Time")
                        .frame(width: 280, height: 50)
                        .background(Color.white)
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .cornerRadius(10)
                }
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    var dayOfWeek: String
    var imageName: String
    var temprature: Int
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundStyle(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .frame(width: 40, height: 40)
                .aspectRatio(contentMode: .fill)
            Text("\(temprature)°")
                .foregroundColor(.white)
                .font(.system(size: 28, weight: .medium))
        }
    }
}

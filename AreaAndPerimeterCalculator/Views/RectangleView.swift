//
//  RectangleView.swift
//  AreaAndPerimeterCalculator
//
//  Created by Morgan Harris-Stoertz on 2023-01-17.
//

import SwiftUI

struct RectangleView: View {
    // MARK: stored properties
    @State var length: Double = 7
    @State var width: Double = 5
    
    
    // MARK: computed properties
    var area: Double{
        return length*width
    }
    
    var body: some View{
        VStack{
            
            HStack{
                Image("Rectangle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250)
                
                Spacer()
            }
            Spacer()
            
            
            //lenght
            
            Text("Length")
                .font(.title2)
                .bold()
            
            //slider to control length
            
            Slider(value: $length, in: 0...100, label: { Text("Length")}, minimumValueLabel: {Text("0")}, maximumValueLabel: {Text("100")})
            //use string interpolation \() to display length
            
            Text("\(length)")
            
            //width
            
            Text("Width")
                .font(.title2)
                .bold()
            
            Slider(value: $width, in: 0...100, label: { Text("Length")}, minimumValueLabel: {Text("0")}, maximumValueLabel: {Text("100")})
            //use string interpolation \() to display length
            
            Text("\(width)")
            
            
            //area
            
            Text("Area")
                .font(.title2)
                .bold()
            
            Slider(value: $area, in: 0...100, label: { Text("Length")}, minimumValueLabel: {Text("0")}, maximumValueLabel: {Text("100")})
            //use string interpolation \() to display length
            
            Text("\(area)")
            
        }
    }
}

struct RectangleView_Previews: PreviewProvider {
    static var previews: some View {
        RectangleView()
    }
}

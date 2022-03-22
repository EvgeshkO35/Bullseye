//
//  TextViews.swift
//  Bullseye
//
//  Created by Evgenii Lysenko on 3/19/22.
//

import SwiftUI

struct InstructionsText: View {
    
    var text: String
    
    var body: some View {
        Text(text.uppercased())
            .bold()
            .kerning(2.0)
            .multilineTextAlignment(.center)
            .lineSpacing(4.0)
            .font(.footnote)
            .foregroundColor(Color("TextColor"))
    }
}

struct BigNumberText: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .kerning(-1.0)
            .font(.largeTitle)
            .fontWeight(.black)
            .foregroundColor(Color("TextColor"))
    }
    
}

struct SliderLabelText: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .bold()
            .foregroundColor(Color("TextColor"))
            .frame(width: 35.0)
    }
}

struct LabelTextView: View {
    var text: String
    
    var body: some View {
        Text(text)
            .kerning(1.5)
            .bold()
            .font(.caption)
            .foregroundColor(Color("TextColor"))
    }
}

struct BodyTextView: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundColor(Color("TextColor"))
            .lineSpacing(12.0)
            .multilineTextAlignment(.center)
    }
}

struct ButtonTextView: View {
    var text: String
    
    var body: some View {
        Text(text)
            .bold()
            .font(.body)
            .foregroundColor(.white)
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.accentColor)
            .cornerRadius(12.0)
            
    }
}

struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            InstructionsText(text: "Instructions")
            BigNumberText(text: "999")
            SliderLabelText(text: "1")
            LabelTextView(text: "Score")
            BodyTextView(text: "You scored 200 Points\n🎉🎉🎉")
            ButtonTextView(text: "Start New Round")
        }
        .padding()
    }
}

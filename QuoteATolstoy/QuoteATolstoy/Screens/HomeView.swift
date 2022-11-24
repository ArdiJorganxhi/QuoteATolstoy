//
//  HomeView.swift
//  RESTART
//
//  Created by Ardi Jorganxhi on 24.11.22.
//

import SwiftUI

struct HomeView: View {
    
    private var tolstoyQuotes: [String] = ["Everyone thinks of changing the world, but no one thinks of changing himself.", "All happy families are alike; each unhappy family is unhappy in its own way.", "If you look for perfection, you'll never be content", "It is amazing how complete is the delusion that beauty is goodness.", "He stepped down, trying not to look long at her, as if she were the sun, yet he saw her, like the sun, even without looking", "Respect was invented to cover the empty place where love should be." ]
    
    
    @State private var index: Int = Int.random(in: 0...5)
    
    @AppStorage("onboarding") var isOnBoardingViewActive: Bool = true
    @State private var isAnimating: Bool = false
    var body: some View {
        VStack(spacing: 20){
            
          Spacer()
            
            
            
            ZStack {
                
                Image("tolstoy")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300)
               
             
            }
            
            Text(tolstoyQuotes[index])
                .font(.title3)
                .fontWeight(.light)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .frame(width: 350)
            
            Spacer()
            Button(action: {
                withAnimation {
                    
                    index = Int.random(in: 0...5)
                    
                    
                }
                
            }) {
                Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                    .imageScale(.large)
                Text("Quote it!")
                    .font(.system(.title3, design: .rounded))
                    .fontWeight(.bold)
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
            
        }
        .onAppear(perform: {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3 , execute:{
                isAnimating = true
            })
        })
       
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

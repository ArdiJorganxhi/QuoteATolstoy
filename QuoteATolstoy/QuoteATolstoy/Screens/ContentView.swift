//
//  ContentView.swift
//  RESTART
//
//  Created by Ardi Jorganxhi on 24.11.22.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("onboarding") var isOnBoardingViewActive: Bool = true
    var body: some View {
       
        ZStack{
            
            if(isOnBoardingViewActive){
                OnboardingView()
            }
            else{
                HomeView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

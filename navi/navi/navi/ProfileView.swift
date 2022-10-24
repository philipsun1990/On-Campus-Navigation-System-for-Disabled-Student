//
//  SwiftUIView.swift
//  navi
//
//  Created by Jiaji sun on 10/4/22.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        HStack()
        {
            VStack()
            {
                Text("Profile")
                    .frame(width: 100, height: 50, alignment: .topLeading)
                    .padding()
                    .font(.system(size: 33).bold())
                HStack()
                {
                    Image("business_woman_2")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100, height: 100, alignment: .topLeading)
                    //                .cornerRadius(200)
                        .clipShape(Circle())
                        .clipped()
                    
                }
                .frame(width: 100, height: 100, alignment: .topLeading)
//                .background(Color.orange)
                
            }
//            .background(Color.blue)
            .padding(.bottom, 500)
        }
        .padding(.leading, -180)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

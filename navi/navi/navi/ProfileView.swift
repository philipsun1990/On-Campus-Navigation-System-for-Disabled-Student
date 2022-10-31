//
//  SwiftUIView.swift
//  navi
//
//  Created by Jiaji sun on 10/4/22.
//

import SwiftUI

struct LocationView: View {
    let roadname: String

    var body: some View {
        Text("\(roadname)")
            .font(.largeTitle)
    }
}

struct ProfileView: View {
    let roads = [
        "30th ST",
        "18th ST",
        "Colorado Ave",
        ]
    var body: some View {
        NavigationView {
            VStack (alignment: .leading){
                HStack()
                {
                    VStack()
                    {
                        Text("Profile")
                            .frame(width: 120, height: 50, alignment: .topLeading)
                            .padding()
                            .font(.system(size: 35).bold())
                        HStack()
                        {
                            Image("business_woman_2")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 100, height: 100, alignment: .topLeading)
                                .clipShape(Circle())
                                .clipped()

                        }
                        .frame(width: 100, height: 100, alignment: .topLeading)

                    }
                    Spacer()
                }
                Spacer()
                Spacer()

//                Divider().padding(.top, 40)
                Text("Report History")
//                    .font(.largeTitle)
//                    .multilineTextAlignment(.leading)
                    .frame(width: 250, height: 20, alignment: .topLeading)
                    .padding()
                    .font(.system(size: 35).bold())
                NavigationView {
                    List(roads, id: \.self) { road in
                        NavigationLink(destination: LocationView(roadname: road)) {
                            Text(road)
                        }
                    }
                }

            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

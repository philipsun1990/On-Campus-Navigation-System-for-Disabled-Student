//
//  MapContainerView.swift
//  navi_V2
//
//  Created by Jiaji sun on 11/30/22.
//

import SwiftUI
import CoreLocation

struct MapContainerView: View {
    
    @StateObject var mapData = MapViewModel()
    
    @State var locationManager = CLLocationManager()
    
    @State private var showingSheet = false
    
    
    var body: some View {
        ZStack{
            
            MapView()
                .ignoresSafeArea(.all, edges: [.top, .horizontal])
                .environmentObject(mapData)
            
            VStack{
                
                VStack(spacing: 0){
                    
                    HStack{
                        
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                        
                        TextField("Search", text: $mapData.searchTxt)
                            .colorScheme(.light)
                    }
                    .padding(.vertical,10)
                    .padding(.horizontal)
                    .background(Color.white)
                    
                    if !mapData.places.isEmpty && mapData.searchTxt != ""{
                        
                        ScrollView{
                            
                            VStack(spacing: 15){
                                
                                ForEach(mapData.places){place in
                                    
                                    Text(place.place.name ?? "")
                                        .foregroundColor(.black)
                                        .frame(maxWidth: .infinity,alignment: .leading)
                                        .padding(.leading)
                                        .onTapGesture {
                                            mapData
                                                .selectPlace(place: place)
                                        }
                                    
                                    Divider()
                                }
                            }
                            .padding(.top)
                        }
                        .background(Color.white)
                    }
                }
                .padding()
                
                
                Spacer()
                
                VStack{
                    
                    Button(action: mapData.focusLocation, label: {
                        Image(systemName: "location.fill")
                            .font(.title2)
                            .padding(10)
                            .background(Color.primary)
                            .clipShape(Circle())
                    })
                    
                    Button(action: mapData.updateMapType, label: {
                        Image(systemName: mapData.mapType ==
                            .standard ? "network" : "map")
                        .font(.title2)
                        .padding(10)
                        .background(Color.primary)
                        .clipShape(Circle())
                    })
                    
                    Button {
                        showingSheet.toggle()
                    } label: {
                        Label("",systemImage:"line.3.horizontal.decrease.circle.fill")
                    }
                    .sheet(isPresented: $showingSheet) {
                        SheetView()
                    }
                    .font(.system(.largeTitle))
                    //                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
                    .padding(10)
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding()
            }
        }
        .onAppear(perform: {
            locationManager.delegate = mapData
            locationManager.requestWhenInUseAuthorization()
        })
        .alert(isPresented: $mapData.permissionDenied, content: {
            Alert(title: Text("Permission Denied"), message: Text("Please Enable Permission In App Settings"), dismissButton: .default(Text("Go to Settings"),action: {
                UIApplication.shared.open(URL(string: UIApplication.openSettingsURLString)!)
            }))
        })
        .onChange(of: mapData.searchTxt, perform: { value in
            let delay = 0.3
            
            DispatchQueue.main.asyncAfter(deadline: .now() + delay)
            {
                if value == mapData.searchTxt{
                    
                    self.mapData.searchQuery()
                }
            }
        })
        
    }
}

struct MapContainerView_Previews: PreviewProvider {
    static var previews: some View {
        MapContainerView()
    }
}

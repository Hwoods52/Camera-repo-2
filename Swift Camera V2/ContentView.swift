//
//  ContentView.swift
//  Swift Camera V2
//
//  Created by Jam school  on 3/17/23.
//

import SwiftUI

struct ContentView: View {
    @State var sourceType: UIImagePickerController.SourceType = .photoLibrary
    
    
    @State var selectedImage: UIImage?
    @State var displayPickerView = false
    var body: some View {
        NavigationView{
            VStack {
                if let selectedImage = self.selectedImage{
                    
                    Image(uiImage: selectedImage)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
                        .frame (width: 300, height: 300)
                    
                } else{
                    Image(systemName: "photo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
                        .frame (width: 300, height: 300)
                }
                
                HStack{
                    Button( action: {
                        self.sourceType = .photoLibrary
                        self.displayPickerView = true 
                    }){
                        Image(systemName: "folder")
                    }
                    Button( action: {
                        
                    }){
                        Image(systemName: "camera")
                    }
                }
                
                
                
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

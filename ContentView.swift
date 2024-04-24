//
//  ContentView.swift
//  Photo Picker
//
//  Created by Mushik, Victoria on 4/18/24.
//
import SwiftUI
import PhotosUI


struct ContentView: View {
    @State private var avatarImage: UIImage?
    @State private var photosPickerItem: PhotosPickerItem?
    
    var body: some View {
        VStack {
            HStack(spacing: 20) {
                PhotosPicker(selection: $photosPickerItem) {
                    if let image = avatarImage {
                        Image(uiImage: image)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 100)
                            .clipShape(Circle())
                    } else {
                        Image(systemName: "person.circle.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 100)
                            .foregroundColor(.gray)
                            .clipShape(Circle())
                    }
                }
                VStack{
                    Text("Victoria Mushik")
                        .font(.largeTitle.bold())
                }
            }
            .padding()
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}

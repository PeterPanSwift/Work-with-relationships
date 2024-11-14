//
//  FilteredMovieList.swift
//  FriendsFavoriteMovies
//
//  Created by SHIH-YING PAN on 2024/11/12.
//

import SwiftUI

struct FilteredMovieList: View {
    @State private var searchText = ""

    var body: some View {
        NavigationSplitView {
            MovieList(titleFilter: searchText)
                .searchable(text: $searchText)
        } detail: {
            Text("Select a movie")
                .navigationTitle("Movie")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    FilteredMovieList()
        .modelContainer(SampleData.shared.modelContainer)
}

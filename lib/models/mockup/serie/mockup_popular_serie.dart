import 'package:flutter_fiveflix/models/popular_serie_model.dart';

abstract class MockupPopularSerie {
  static List<PopularSerieModel> mockPopularSerie() {
    return [
      PopularSerieModel(
          id: 1620,
          originalName: "CSI: Miami",
          popularity: 2515.982,
          posterPath: "/pNW64pjaHvf6purNaFhq4SHYRfl.jpg",
          name: "CSI: Miami"),
      PopularSerieModel(
          id: 1431,
          originalName: "CSI: Crime Scene Investigation",
          popularity: 2277.626,
          posterPath: "/i5hmoRjHNWady4AtAGICTUXknKH.jpg",
          name: "CSI: Crime Scene Investigation"),
      PopularSerieModel(
          id: 2734,
          originalName: "Law & Order: Special Victims Unit",
          popularity: 4190.138,
          posterPath: "/onmSVwYsPMYtO8OjLdjS8FfRNKb.jpg",
          name: "Law & Order: Special Victims Unit"),
      PopularSerieModel(
          id: 1416,
          originalName: "Grey's Anatomy",
          popularity: 3212.363,
          posterPath: "/jcEl8SISNfGdlQFwLzeEtsjDvpw.jpg",
          name: "Grey's Anatomy"),
      PopularSerieModel(
          id: 39351,
          originalName: "Grimm",
          popularity: 2883.867,
          posterPath: "/iOptnt1QHi6bIHmOq6adnZTV0bU.jpg",
          name: "Grimm"),
      PopularSerieModel(
          id: 1622,
          originalName: "Supernatural",
          popularity: 2833.636,
          posterPath: "/KoYWXbnYuS3b0GyQPkbuexlVK9.jpg",
          name: "Supernatural"),
    ];
  }

  static List<PopularSerieModel> getPopularMoviesSortedByPopularity() {
    List<PopularSerieModel> movies = mockPopularSerie();
    movies.sort((a, b) => b.popularity.compareTo(a.popularity));

    return movies;
  }
}

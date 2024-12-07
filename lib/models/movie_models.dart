class movie {
  final String banner;
  final String poster;
  final String nama;
  final String genre;
  final int rating;

  movie({
    required this.banner,
    required this.poster,
    required this.genre,
    required this.nama,
    required this.rating,
  });
}

List<movie> categories = [
  movie(
    banner: 'agaklain.jpg',
    poster: 'assets/poster 1.png',
    genre: "Drama, Keluarga",
    nama: 'Agak Laen',
    rating: 8,
  ),
  movie(
    banner: 'mencuriraden.jpg',
    poster: 'assets/poster 2.png',
    genre: "Drama, Keluarga",
    nama: 'Mencuri Raden Saleh',
    rating: 9,
  ),
  movie(
    banner: 'avatar.jpg',
    poster: 'assets/poster 3.png',
    genre: "Drama, Keluarga",
    nama: 'Avatar',
    rating: 8,
  ),
  movie(
    banner: 'kartunbanteng.jpg',
    poster: 'assets/poster 4.png',
    genre: "Kartun Anak Anak",
    nama: 'Ferdinand',
    rating: 9,
  )
];

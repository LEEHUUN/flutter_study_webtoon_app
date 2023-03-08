class WebtoonEpisodeModel {
  final String thumb, id, title, rating, date;

  WebtoonEpisodeModel.fromJson(Map<String, dynamic> json)
      : thumb = json['thunb'],
        id = json['id'],
        title = json['title'],
        rating = json['rating'],
        date = json['date'];
}

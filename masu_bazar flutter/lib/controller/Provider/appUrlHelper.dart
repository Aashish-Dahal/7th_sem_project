class AppUrl {
  static const String userBaseUrl = "http://192.168.254.6:3000/user";
  static const String khasiBaseUrl = "http://192.168.254.6:3000/khasiLists";
  static const String imageUrl = 'http://192.168.254.6:3000/';
  static const String login = userBaseUrl + '/login';
  static const String register = userBaseUrl + '/signup';
  static const String addKhasi = khasiBaseUrl + '/post';
  static const String getKhasi = khasiBaseUrl + '/khasi';
  static const String getBoka = khasiBaseUrl + '/boka';
  static const String getSingleKhasi = khasiBaseUrl + '/singleKhasi';
}

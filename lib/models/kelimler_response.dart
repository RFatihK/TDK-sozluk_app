class KelimelerResponse {
  KelimelerResponse({this.anlamlarList});

  KelimelerResponse.fromJson(Map<String, dynamic> json) {
    if (json['anlamlarListe'] != null) {
      anlamlarList = [];
      json['anlamlarListe']
          .forEach((a) => anlamlarList!.add(AnlamlarList.fromJson(a)));
    }
  }

  List<AnlamlarList>? anlamlarList;
}

class AnlamlarList {
  AnlamlarList({this.anlam});

  AnlamlarList.fromJson(Map<String, dynamic> json) {
    anlam = json['anlam'];
  }

  String? anlam;
}

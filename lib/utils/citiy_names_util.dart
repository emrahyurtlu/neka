import 'dart:core';

class AddressStatics {
  static List<String> getCities() {
    var temp = List<String>();
    citiesFull.forEach((item) {
      temp.add(item["city_name"]);
    });
    return temp;
  }

  static List<Map<String, dynamic>> citiesFull = [
    {
      "city_name": "Adana",
      "plate": 1,
      "districts": [
        "Aladağ",
        "Ceyhan",
        "Çukurova",
        "Feke",
        "İmamoğlu",
        "Karaisalı",
        "Karataş",
        "Kozan",
        "Pozantı",
        "Saimbeyli",
        "Sarıçam",
        "Seyhan",
        "Tufanbeyli",
        "Yumurtalık",
        "Yüreğir"
      ]
    },
    {
      "city_name": "Adıyaman",
      "plate": 2,
      "districts": [
        "Besni",
        "Çelikhan",
        "Gerger",
        "Gölbaşı",
        "Kahta",
        "Merkez",
        "Samsat",
        "Sincik",
        "Tut"
      ]
    },
    {
      "city_name": "Afyonkarahisar",
      "plate": 3,
      "districts": [
        "Başmakçı",
        "Bayat",
        "Bolvadin",
        "Çay",
        "Çobanlar",
        "Dazkırı",
        "Dinar",
        "Emirdağ",
        "Evciler",
        "Hocalar",
        "İhsaniye",
        "İscehisar",
        "Kızılören",
        "Merkez",
        "Sandıklı",
        "Sinanpaşa",
        "Sultandağı",
        "Şuhut"
      ]
    },
    {
      "city_name": "Ağrı",
      "plate": 4,
      "districts": [
        "Diyadin",
        "Doğubayazıt",
        "Eleşkirt",
        "Hamur",
        "Merkez",
        "Patnos",
        "Taşlıçay",
        "Tutak"
      ]
    },
    {
      "city_name": "Amasya",
      "plate": 5,
      "districts": [
        "Göynücek",
        "Gümüşhacıköy",
        "Hamamözü",
        "Merkez",
        "Merzifon",
        "Suluova",
        "Taşova"
      ]
    },
    {
      "city_name": "Ankara",
      "plate": 6,
      "districts": [
        "Altındağ",
        "Ayaş",
        "Bala",
        "Beypazarı",
        "Çamlıdere",
        "Çankaya",
        "Çubuk",
        "Elmadağ",
        "Güdül",
        "Haymana",
        "Kalecik",
        "Kızılcahamam",
        "Nallıhan",
        "Polatlı",
        "Şereflikoçhisar",
        "Yenimahalle",
        "Gölbaşı",
        "Keçiören",
        "Mamak",
        "Sincan",
        "Kazan",
        "Akyurt",
        "Etimesgut",
        "Evren",
        "Pursaklar"
      ]
    },
    {
      "city_name": "Antalya",
      "plate": 7,
      "districts": [
        "Akseki",
        "Alanya",
        "Elmalı",
        "Finike",
        "Gazipaşa",
        "Gündoğmuş",
        "Kaş",
        "Korkuteli",
        "Kumluca",
        "Manavgat",
        "Serik",
        "Demre",
        "İbradı",
        "Kemer",
        "Aksu",
        "Döşemealtı",
        "Kepez",
        "Konyaaltı",
        "Muratpaşa"
      ]
    },
    {
      "city_name": "Artvin",
      "plate": 8,
      "districts": [
        "Ardanuç",
        "Arhavi",
        "Merkez",
        "Borçka",
        "Hopa",
        "Şavşat",
        "Yusufeli",
        "Murgul"
      ]
    },
    {
      "city_name": "Aydın",
      "plate": 9,
      "districts": [
        "Merkez",
        "Bozdoğan",
        "Efeler",
        "Çine",
        "Germencik",
        "Karacasu",
        "Koçarlı",
        "Kuşadası",
        "Kuyucak",
        "Nazilli",
        "Söke",
        "Sultanhisar",
        "Yenipazar",
        "Buharkent",
        "İncirliova",
        "Karpuzlu",
        "Köşk",
        "Didim"
      ]
    },
    {
      "city_name": "Balıkesir",
      "plate": 10,
      "districts": [
        "Altıeylül",
        "Ayvalık",
        "Merkez",
        "Balya",
        "Bandırma",
        "Bigadiç",
        "Burhaniye",
        "Dursunbey",
        "Edremit",
        "Erdek",
        "Gönen",
        "Havran",
        "İvrindi",
        "Karesi",
        "Kepsut",
        "Manyas",
        "Savaştepe",
        "Sındırgı",
        "Gömeç",
        "Susurluk",
        "Marmara"
      ]
    },
    {
      "city_name": "Bilecik",
      "plate": 11,
      "districts": [
        "Merkez",
        "Bozüyük",
        "Gölpazarı",
        "Osmaneli",
        "Pazaryeri",
        "Söğüt",
        "Yenipazar",
        "İnhisar"
      ]
    },
    {
      "city_name": "Bingöl",
      "plate": 12,
      "districts": [
        "Merkez",
        "Genç",
        "Karlıova",
        "Kiğı",
        "Solhan",
        "Adaklı",
        "Yayladere",
        "Yedisu"
      ]
    },
    {
      "city_name": "Bitlis",
      "plate": 13,
      "districts": [
        "Adilcevaz",
        "Ahlat",
        "Merkez",
        "Hizan",
        "Mutki",
        "Tatvan",
        "Güroymak"
      ]
    },
    {
      "city_name": "Bolu",
      "plate": 14,
      "districts": [
        "Merkez",
        "Gerede",
        "Göynük",
        "Kıbrıscık",
        "Mengen",
        "Mudurnu",
        "Seben",
        "Dörtdivan",
        "Yeniçağa"
      ]
    },
    {
      "city_name": "Burdur",
      "plate": 15,
      "districts": [
        "Ağlasun",
        "Bucak",
        "Merkez",
        "Gölhisar",
        "Tefenni",
        "Yeşilova",
        "Karamanlı",
        "Kemer",
        "Altınyayla",
        "Çavdır",
        "Çeltikçi"
      ]
    },
    {
      "city_name": "Bursa",
      "plate": 16,
      "districts": [
        "Gemlik",
        "İnegöl",
        "İznik",
        "Karacabey",
        "Keles",
        "Mudanya",
        "Mustafakemalpaşa",
        "Orhaneli",
        "Orhangazi",
        "Yenişehir",
        "Büyükorhan",
        "Harmancık",
        "Nilüfer",
        "Osmangazi",
        "Yıldırım",
        "Gürsu",
        "Kestel"
      ]
    },
    {
      "city_name": "Çanakkale",
      "plate": 17,
      "districts": [
        "Ayvacık",
        "Bayramiç",
        "Biga",
        "Bozcaada",
        "Çan",
        "Merkez",
        "Eceabat",
        "Ezine",
        "Gelibolu",
        "Gökçeada",
        "Lapseki",
        "Yenice"
      ]
    },
    {
      "city_name": "Çankırı",
      "plate": 18,
      "districts": [
        "Merkez",
        "Çerkeş",
        "Eldivan",
        "Ilgaz",
        "Kurşunlu",
        "Orta",
        "Şabanözü",
        "Yapraklı",
        "Atkaracalar",
        "Kızılırmak",
        "Bayramören",
        "Korgun"
      ]
    },
    {
      "city_name": "Çorum",
      "plate": 19,
      "districts": [
        "Alaca",
        "Bayat",
        "Merkez",
        "İskilip",
        "Kargı",
        "Mecitözü",
        "Ortaköy",
        "Osmancık",
        "Sungurlu",
        "Boğazkale",
        "Uğurludağ",
        "Dodurga",
        "Laçin",
        "Oğuzlar"
      ]
    },
    {
      "city_name": "Denizli",
      "plate": 20,
      "districts": [
        "Acıpayam",
        "Buldan",
        "Çal",
        "Çameli",
        "Çardak",
        "Çivril",
        "Merkez",
        "Merkezefendi",
        "Pamukkale",
        "Güney",
        "Kale",
        "Sarayköy",
        "Tavas",
        "Babadağ",
        "Bekilli",
        "Honaz",
        "Serinhisar",
        "Baklan",
        "Beyağaç",
        "Bozkurt"
      ]
    },
    {
      "city_name": "Diyarbakır",
      "plate": 21,
      "districts": [
        "Kocaköy",
        "Çermik",
        "Çınar",
        "Çüngüş",
        "Dicle",
        "Ergani",
        "Hani",
        "Hazro",
        "Kulp",
        "Lice",
        "Silvan",
        "Eğil",
        "Bağlar",
        "Kayapınar",
        "Sur",
        "Yenişehir",
        "Bismil"
      ]
    },
    {
      "city_name": "Edirne",
      "plate": 22,
      "districts": [
        "Merkez",
        "Enez",
        "Havsa",
        "İpsala",
        "Keşan",
        "Lalapaşa",
        "Meriç",
        "Uzunköprü",
        "Süloğlu"
      ]
    },
    {
      "city_name": "Elazığ",
      "plate": 23,
      "districts": [
        "Ağın",
        "Baskil",
        "Merkez",
        "Karakoçan",
        "Keban",
        "Maden",
        "Palu",
        "Sivrice",
        "Arıcak",
        "Kovancılar",
        "Alacakaya"
      ]
    },
    {
      "city_name": "Erzincan",
      "plate": 24,
      "districts": [
        "Çayırlı",
        "Merkez",
        "İliç",
        "Kemah",
        "Kemaliye",
        "Refahiye",
        "Tercan",
        "Üzümlü",
        "Otlukbeli"
      ]
    },
    {
      "city_name": "Erzurum",
      "plate": 25,
      "districts": [
        "Aşkale",
        "Çat",
        "Hınıs",
        "Horasan",
        "İspir",
        "Karayazı",
        "Narman",
        "Oltu",
        "Olur",
        "Pasinler",
        "Şenkaya",
        "Tekman",
        "Tortum",
        "Karaçoban",
        "Uzundere",
        "Pazaryolu",
        "Köprüköy",
        "Palandöken",
        "Yakutiye",
        "Aziziye"
      ]
    },
    {
      "city_name": "Eskişehir",
      "plate": 26,
      "districts": [
        "Çifteler",
        "Mahmudiye",
        "Mihalıççık",
        "Sarıcakaya",
        "Seyitgazi",
        "Sivrihisar",
        "Alpu",
        "Beylikova",
        "İnönü",
        "Günyüzü",
        "Han",
        "Mihalgazi",
        "Odunpazarı",
        "Tepebaşı"
      ]
    },
    {
      "city_name": "Gaziantep",
      "plate": 27,
      "districts": [
        "Araban",
        "İslahiye",
        "Nizip",
        "Oğuzeli",
        "Yavuzeli",
        "Şahinbey",
        "Şehitkamil",
        "Karkamış",
        "Nurdağı"
      ]
    },
    {
      "city_name": "Giresun",
      "plate": 28,
      "districts": [
        "Alucra",
        "Bulancak",
        "Dereli",
        "Espiye",
        "Eynesil",
        "Merkez",
        "Görele",
        "Keşap",
        "Şebinkarahisar",
        "Tirebolu",
        "Piraziz",
        "Yağlıdere",
        "Çamoluk",
        "Çanakçı",
        "Doğankent",
        "Güce"
      ]
    },
    {
      "city_name": "Gümüşhane",
      "plate": 29,
      "districts": ["Merkez", "Kelkit", "Şiran", "Torul", "Köse", "Kürtün"]
    },
    {
      "city_name": "Hakkari",
      "plate": 30,
      "districts": ["Çukurca", "Merkez", "Şemdinli", "Yüksekova"]
    },
    {
      "city_name": "Hatay",
      "plate": 31,
      "districts": [
        "Altınözü",
        "Arsuz",
        "Defne",
        "Dörtyol",
        "Hassa",
        "Antakya",
        "İskenderun",
        "Kırıkhan",
        "Payas",
        "Reyhanlı",
        "Samandağ",
        "Yayladağı",
        "Erzin",
        "Belen",
        "Kumlu"
      ]
    },
    {
      "city_name": "Isparta",
      "plate": 32,
      "districts": [
        "Atabey",
        "Eğirdir",
        "Gelendost",
        "Merkez",
        "Keçiborlu",
        "Senirkent",
        "Sütçüler",
        "Şarkikaraağaç",
        "Uluborlu",
        "Yalvaç",
        "Aksu",
        "Gönen",
        "Yenişarbademli"
      ]
    },
    {
      "city_name": "Mersin",
      "plate": 33,
      "districts": [
        "Anamur",
        "Erdemli",
        "Gülnar",
        "Mut",
        "Silifke",
        "Tarsus",
        "Aydıncık",
        "Bozyazı",
        "Çamlıyayla",
        "Akdeniz",
        "Mezitli",
        "Toroslar",
        "Yenişehir"
      ]
    },
    {
      "city_name": "İstanbul",
      "plate": 34,
      "districts": [
        "Adalar",
        "Bakırköy",
        "Beşiktaş",
        "Beykoz",
        "Beyoğlu",
        "Çatalca",
        "Eyüp",
        "Fatih",
        "Gaziosmanpaşa",
        "Kadıköy",
        "Kartal",
        "Sarıyer",
        "Silivri",
        "Şile",
        "Şişli",
        "Üsküdar",
        "Zeytinburnu",
        "Büyükçekmece",
        "Kağıthane",
        "Küçükçekmece",
        "Pendik",
        "Ümraniye",
        "Bayrampaşa",
        "Avcılar",
        "Bağcılar",
        "Bahçelievler",
        "Güngören",
        "Maltepe",
        "Sultanbeyli",
        "Tuzla",
        "Esenler",
        "Arnavutköy",
        "Ataşehir",
        "Başakşehir",
        "Beylikdüzü",
        "Çekmeköy",
        "Esenyurt",
        "Sancaktepe",
        "Sultangazi"
      ]
    },
    {
      "city_name": "İzmir",
      "plate": 35,
      "districts": [
        "Aliağa",
        "Bayındır",
        "Bergama",
        "Bornova",
        "Çeşme",
        "Dikili",
        "Foça",
        "Karaburun",
        "Karşıyaka",
        "Kemalpaşa",
        "Kınık",
        "Kiraz",
        "Menemen",
        "Ödemiş",
        "Seferihisar",
        "Selçuk",
        "Tire",
        "Torbalı",
        "Urla",
        "Beydağ",
        "Buca",
        "Konak",
        "Menderes",
        "Balçova",
        "Çiğli",
        "Gaziemir",
        "Narlıdere",
        "Güzelbahçe",
        "Bayraklı",
        "Karabağlar"
      ]
    },
    {
      "city_name": "Kars",
      "plate": 36,
      "districts": [
        "Arpaçay",
        "Digor",
        "Kağızman",
        "Merkez",
        "Sarıkamış",
        "Selim",
        "Susuz",
        "Akyaka"
      ]
    },
    {
      "city_name": "Kastamonu",
      "plate": 37,
      "districts": [
        "Abana",
        "Araç",
        "Azdavay",
        "Bozkurt",
        "Cide",
        "Çatalzeytin",
        "Daday",
        "Devrekani",
        "İnebolu",
        "Merkez",
        "Küre",
        "Taşköprü",
        "Tosya",
        "İhsangazi",
        "Pınarbaşı",
        "Şenpazar",
        "Ağlı",
        "Doğanyurt",
        "Hanönü",
        "Seydiler"
      ]
    },
    {
      "city_name": "Kayseri",
      "plate": 38,
      "districts": [
        "Bünyan",
        "Develi",
        "Felahiye",
        "İncesu",
        "Pınarbaşı",
        "Sarıoğlan",
        "Sarız",
        "Tomarza",
        "Yahyalı",
        "Yeşilhisar",
        "Akkışla",
        "Talas",
        "Kocasinan",
        "Melikgazi",
        "Hacılar",
        "Özvatan"
      ]
    },
    {
      "city_name": "Kırklareli",
      "plate": 39,
      "districts": [
        "Babaeski",
        "Demirköy",
        "Merkez",
        "Kofçaz",
        "Lüleburgaz",
        "Pehlivanköy",
        "Pınarhisar",
        "Vize"
      ]
    },
    {
      "city_name": "Kırşehir",
      "plate": 40,
      "districts": [
        "Çiçekdağı",
        "Kaman",
        "Merkez",
        "Mucur",
        "Akpınar",
        "Akçakent",
        "Boztepe"
      ]
    },
    {
      "city_name": "Kocaeli",
      "plate": 41,
      "districts": [
        "Gebze",
        "Gölcük",
        "Kandıra",
        "Karamürsel",
        "Körfez",
        "Derince",
        "Başiskele",
        "Çayırova",
        "Darıca",
        "Dilovası",
        "İzmit",
        "Kartepe"
      ]
    },
    {
      "city_name": "Konya",
      "plate": 42,
      "districts": [
        "Akşehir",
        "Beyşehir",
        "Bozkır",
        "Cihanbeyli",
        "Çumra",
        "Doğanhisar",
        "Ereğli",
        "Hadim",
        "Ilgın",
        "Kadınhanı",
        "Karapınar",
        "Kulu",
        "Sarayönü",
        "Seydişehir",
        "Yunak",
        "Akören",
        "Altınekin",
        "Derebucak",
        "Hüyük",
        "Karatay",
        "Meram",
        "Selçuklu",
        "Taşkent",
        "Ahırlı",
        "Çeltik",
        "Derbent",
        "Emirgazi",
        "Güneysınır",
        "Halkapınar",
        "Tuzlukçu",
        "Yalıhüyük"
      ]
    },
    {
      "city_name": "Kütahya",
      "plate": 43,
      "districts": [
        "Altıntaş",
        "Domaniç",
        "Emet",
        "Gediz",
        "Merkez",
        "Simav",
        "Tavşanlı",
        "Aslanapa",
        "Dumlupınar",
        "Hisarcık",
        "Şaphane",
        "Çavdarhisar",
        "Pazarlar"
      ]
    },
    {
      "city_name": "Malatya",
      "plate": 44,
      "districts": [
        "Akçadağ",
        "Arapgir",
        "Arguvan",
        "Darende",
        "Doğanşehir",
        "Hekimhan",
        "Merkez",
        "Pütürge",
        "Yeşilyurt",
        "Battalgazi",
        "Doğanyol",
        "Kale",
        "Kuluncak",
        "Yazıhan"
      ]
    },
    {
      "city_name": "Manisa",
      "plate": 45,
      "districts": [
        "Akhisar",
        "Alaşehir",
        "Demirci",
        "Gördes",
        "Kırkağaç",
        "Kula",
        "Merkez",
        "Salihli",
        "Sarıgöl",
        "Saruhanlı",
        "Selendi",
        "Soma",
        "Şehzadeler",
        "Yunusemre",
        "Turgutlu",
        "Ahmetli",
        "Gölmarmara",
        "Köprübaşı"
      ]
    },
    {
      "city_name": "Kahramanmaraş",
      "plate": 46,
      "districts": [
        "Afşin",
        "Andırın",
        "Dulkadiroğlu",
        "Onikişubat",
        "Elbistan",
        "Göksun",
        "Merkez",
        "Pazarcık",
        "Türkoğlu",
        "Çağlayancerit",
        "Ekinözü",
        "Nurhak"
      ]
    },
    {
      "city_name": "Mardin",
      "plate": 47,
      "districts": [
        "Derik",
        "Kızıltepe",
        "Artuklu",
        "Merkez",
        "Mazıdağı",
        "Midyat",
        "Nusaybin",
        "Ömerli",
        "Savur",
        "Dargeçit",
        "Yeşilli"
      ]
    },
    {
      "city_name": "Muğla",
      "plate": 48,
      "districts": [
        "Bodrum",
        "Datça",
        "Fethiye",
        "Köyceğiz",
        "Marmaris",
        "Menteşe",
        "Milas",
        "Ula",
        "Yatağan",
        "Dalaman",
        "Seydikemer",
        "Ortaca",
        "Kavaklıdere"
      ]
    },
    {
      "city_name": "Muş",
      "plate": 49,
      "districts": [
        "Bulanık",
        "Malazgirt",
        "Merkez",
        "Varto",
        "Hasköy",
        "Korkut"
      ]
    },
    {
      "city_name": "Nevşehir",
      "plate": 50,
      "districts": [
        "Avanos",
        "Derinkuyu",
        "Gülşehir",
        "Hacıbektaş",
        "Kozaklı",
        "Merkez",
        "Ürgüp",
        "Acıgöl"
      ]
    },
    {
      "city_name": "Niğde",
      "plate": 51,
      "districts": [
        "Bor",
        "Çamardı",
        "Merkez",
        "Ulukışla",
        "Altunhisar",
        "Çiftlik"
      ]
    },
    {
      "city_name": "Ordu",
      "plate": 52,
      "districts": [
        "Akkuş",
        "Altınordu",
        "Aybastı",
        "Fatsa",
        "Gölköy",
        "Korgan",
        "Kumru",
        "Mesudiye",
        "Perşembe",
        "Ulubey",
        "Ünye",
        "Gülyalı",
        "Gürgentepe",
        "Çamaş",
        "Çatalpınar",
        "Çaybaşı",
        "İkizce",
        "Kabadüz",
        "Kabataş"
      ]
    },
    {
      "city_name": "Rize",
      "plate": 53,
      "districts": [
        "Ardeşen",
        "Çamlıhemşin",
        "Çayeli",
        "Fındıklı",
        "İkizdere",
        "Kalkandere",
        "Pazar",
        "Merkez",
        "Güneysu",
        "Derepazarı",
        "Hemşin",
        "İyidere"
      ]
    },
    {
      "city_name": "Sakarya",
      "plate": 54,
      "districts": [
        "Akyazı",
        "Geyve",
        "Hendek",
        "Karasu",
        "Kaynarca",
        "Sapanca",
        "Kocaali",
        "Pamukova",
        "Taraklı",
        "Ferizli",
        "Karapürçek",
        "Söğütlü",
        "Adapazarı",
        "Arifiye",
        "Erenler",
        "Serdivan"
      ]
    },
    {
      "city_name": "Samsun",
      "plate": 55,
      "districts": [
        "Alaçam",
        "Bafra",
        "Çarşamba",
        "Havza",
        "Kavak",
        "Ladik",
        "Terme",
        "Vezirköprü",
        "Asarcık",
        "Ondokuzmayıs",
        "Salıpazarı",
        "Tekkeköy",
        "Ayvacık",
        "Yakakent",
        "Atakum",
        "Canik",
        "İlkadım"
      ]
    },
    {
      "city_name": "Siirt",
      "plate": 56,
      "districts": [
        "Baykan",
        "Eruh",
        "Kurtalan",
        "Pervari",
        "Merkez",
        "Şirvan",
        "Tillo"
      ]
    },
    {
      "city_name": "Sinop",
      "plate": 57,
      "districts": [
        "Ayancık",
        "Boyabat",
        "Durağan",
        "Erfelek",
        "Gerze",
        "Merkez",
        "Türkeli",
        "Dikmen",
        "Saraydüzü"
      ]
    },
    {
      "city_name": "Sivas",
      "plate": 58,
      "districts": [
        "Divriği",
        "Gemerek",
        "Gürün",
        "Hafik",
        "İmranlı",
        "Kangal",
        "Koyulhisar",
        "Merkez",
        "Suşehri",
        "Şarkışla",
        "Yıldızeli",
        "Zara",
        "Akıncılar",
        "Altınyayla",
        "Doğanşar",
        "Gölova",
        "Ulaş"
      ]
    },
    {
      "city_name": "Tekirdağ",
      "plate": 59,
      "districts": [
        "Çerkezköy",
        "Çorlu",
        "Ergene",
        "Hayrabolu",
        "Malkara",
        "Muratlı",
        "Saray",
        "Süleymanpaşa",
        "Kapaklı",
        "Şarköy",
        "Marmaraereğlisi"
      ]
    },
    {
      "city_name": "Tokat",
      "plate": 60,
      "districts": [
        "Almus",
        "Artova",
        "Erbaa",
        "Niksar",
        "Reşadiye",
        "Merkez",
        "Turhal",
        "Zile",
        "Pazar",
        "Yeşilyurt",
        "Başçiftlik",
        "Sulusaray"
      ]
    },
    {
      "city_name": "Trabzon",
      "plate": 61,
      "districts": [
        "Akçaabat",
        "Araklı",
        "Arsin",
        "Çaykara",
        "Maçka",
        "Of",
        "Ortahisar",
        "Sürmene",
        "Tonya",
        "Vakfıkebir",
        "Yomra",
        "Beşikdüzü",
        "Şalpazarı",
        "Çarşıbaşı",
        "Dernekpazarı",
        "Düzköy",
        "Hayrat",
        "Köprübaşı"
      ]
    },
    {
      "city_name": "Tunceli",
      "plate": 62,
      "districts": [
        "Çemişgezek",
        "Hozat",
        "Mazgirt",
        "Nazımiye",
        "Ovacık",
        "Pertek",
        "Pülümür",
        "Merkez"
      ]
    },
    {
      "city_name": "Şanlıurfa",
      "plate": 63,
      "districts": [
        "Akçakale",
        "Birecik",
        "Bozova",
        "Ceylanpınar",
        "Eyyübiye",
        "Halfeti",
        "Haliliye",
        "Hilvan",
        "Karaköprü",
        "Siverek",
        "Suruç",
        "Viranşehir",
        "Harran"
      ]
    },
    {
      "city_name": "Uşak",
      "plate": 64,
      "districts": ["Banaz", "Eşme", "Karahallı", "Sivaslı", "Ulubey", "Merkez"]
    },
    {
      "city_name": "Van",
      "plate": 65,
      "districts": [
        "Başkale",
        "Çatak",
        "Erciş",
        "Gevaş",
        "Gürpınar",
        "İpekyolu",
        "Muradiye",
        "Özalp",
        "Tuşba",
        "Bahçesaray",
        "Çaldıran",
        "Edremit",
        "Saray"
      ]
    },
    {
      "city_name": "Yozgat",
      "plate": 66,
      "districts": [
        "Akdağmadeni",
        "Boğazlıyan",
        "Çayıralan",
        "Çekerek",
        "Sarıkaya",
        "Sorgun",
        "Şefaatli",
        "Yerköy",
        "Merkez",
        "Aydıncık",
        "Çandır",
        "Kadışehri",
        "Saraykent",
        "Yenifakılı"
      ]
    },
    {
      "city_name": "Zonguldak",
      "plate": 67,
      "districts": [
        "Çaycuma",
        "Devrek",
        "Ereğli",
        "Merkez",
        "Alaplı",
        "Gökçebey"
      ]
    },
    {
      "city_name": "Aksaray",
      "plate": 68,
      "districts": [
        "Ağaçören",
        "Eskil",
        "Gülağaç",
        "Güzelyurt",
        "Merkez",
        "Ortaköy",
        "Sarıyahşi"
      ]
    },
    {
      "city_name": "Bayburt",
      "plate": 69,
      "districts": ["Merkez", "Aydıntepe", "Demirözü"]
    },
    {
      "city_name": "Karaman",
      "plate": 70,
      "districts": [
        "Ermenek",
        "Merkez",
        "Ayrancı",
        "Kazımkarabekir",
        "Başyayla",
        "Sarıveliler"
      ]
    },
    {
      "city_name": "Kırıkkale",
      "plate": 71,
      "districts": [
        "Delice",
        "Keskin",
        "Merkez",
        "Sulakyurt",
        "Bahşili",
        "Balışeyh",
        "Çelebi",
        "Karakeçili",
        "Yahşihan"
      ]
    },
    {
      "city_name": "Batman",
      "plate": 72,
      "districts": [
        "Merkez",
        "Beşiri",
        "Gercüş",
        "Kozluk",
        "Sason",
        "Hasankeyf"
      ]
    },
    {
      "city_name": "Şırnak",
      "plate": 73,
      "districts": [
        "Beytüşşebap",
        "Cizre",
        "İdil",
        "Silopi",
        "Merkez",
        "Uludere",
        "Güçlükonak"
      ]
    },
    {
      "city_name": "Bartın",
      "plate": 74,
      "districts": ["Merkez", "Kurucaşile", "Ulus", "Amasra"]
    },
    {
      "city_name": "Ardahan",
      "plate": 75,
      "districts": ["Merkez", "Çıldır", "Göle", "Hanak", "Posof", "Damal"]
    },
    {
      "city_name": "Iğdır",
      "plate": 76,
      "districts": ["Aralık", "Merkez", "Tuzluca", "Karakoyunlu"]
    },
    {
      "city_name": "Yalova",
      "plate": 77,
      "districts": [
        "Merkez",
        "Altınova",
        "Armutlu",
        "Çınarcık",
        "Çiftlikköy",
        "Termal"
      ]
    },
    {
      "city_name": "Karabük",
      "plate": 78,
      "districts": [
        "Eflani",
        "Eskipazar",
        "Merkez",
        "Ovacık",
        "Safranbolu",
        "Yenice"
      ]
    },
    {
      "city_name": "Kilis",
      "plate": 79,
      "districts": ["Merkez", "Elbeyli", "Musabeyli", "Polateli"]
    },
    {
      "city_name": "Osmaniye",
      "plate": 80,
      "districts": [
        "Bahçe",
        "Kadirli",
        "Merkez",
        "Düziçi",
        "Hasanbeyli",
        "Sumbas",
        "Toprakkale"
      ]
    },
    {
      "city_name": "Düzce",
      "plate": 81,
      "districts": [
        "Akçakoca",
        "Merkez",
        "Yığılca",
        "Cumayeri",
        "Gölyaka",
        "Çilimli",
        "Gümüşova",
        "Kaynaşlı"
      ]
    }
  ];
}
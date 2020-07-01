class Headphones {
  String headphoneName;
  String price;
  String imgeUrl;
  Headphones({this.headphoneName, this.imgeUrl, this.price});
}

List<Headphones> headphones = [
  Headphones(
      imgeUrl: 'images/redbeats.png',
      price: 'Ksh 3700',
      headphoneName: 'Beats by Dre'),
  Headphones(
      imgeUrl: 'images/samsung.png',
      price: 'Ksh 1800',
      headphoneName: 'Samsung'),
  Headphones(
      imgeUrl: 'images/sayona.png',
      price: 'Ksh 3000',
      headphoneName: 'Sayona Base'),
  Headphones(
      imgeUrl: 'images/yellobeats.png',
      price: 'Ksh 2500',
      headphoneName: 'Senheiser'),
  Headphones(
      imgeUrl: 'images/whitebeats.png',
      price: 'Ksh 2000',
      headphoneName: 'Sony MX506'),
  Headphones(
      imgeUrl: 'images/blckbeats.png',
      price: 'Ksh 3100',
      headphoneName: 'Google pix'),
  Headphones(
      imgeUrl: 'images/razer.png',
      price: 'Ksh 4500',
      headphoneName: 'Razor k890'),
];

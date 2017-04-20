# Week 10 - JavaScript [📹](https://youtu.be/g1LC-nbnr34)

## Note
- 자바스크립트는 클라이언트와 서버 사이드에서 둘다 작동하는 언어.
- 웹을 동적으로 작동하는데 사용됨.
- Ajax, a technology that allows us to get more information from the server, after the original page has loaded.

## Voca
- reasonable : 합리적인
  - __reasonable__ people will disagree
- fundamental : 기본적인, 중요한
  - __fundamental__ programming
- omit : 누락하다
  - I've actually omitted some error checking.
- sufficient : 충분한
  - it's not __sufficient__ to just get rid of the server altogether.
- adversary : 상대, 적
  - __an adversary__ whether __maliciously__ or just accidentally...
- maliciously : 악의를 가지고
- underwhelming : 그다지 감동시킬 수 없는
  - this __underwhelming__ button at first glance...
- glance : 흘끗 보다, 곁눈질

## etc
- [jQuery](https://jquery.com/): 자바스크립트의 생산성을 향상시켜주는 자바스크립트 라이브러리
- [Puzzles Example](http://nifty.stanford.edu/2011/parlante-image-puzzle/)
  - Copper Image Puzzle

  ```
  var im = new SimpleImage("copper-puzzle.png");
  for (x = 0; x < im.getWidth(); x++) {
    for (y = 0; y < im.getHeight(); y++) {
      var blue = im.getBlue(x,y)
      var green = im.getGreen(x,y)
      im.setRed(x,y,0)
      im.setBlue(x,y, blue * 20)
      im.setGreen(x,y, green * 20)

    }
  }
  print(im);
  ```
  - West Image Puzzle

  ```
  var im = new SimpleImage("west-puzzle.png");
  for (var x = 0; x < im.getWidth(); x++) {
    for (var y = 0; y < im.getHeight(); y++) {

    im.setRed(x,y,0)
    im.setGreen(x,y,0)
    var blue = im.getBlue(x,y)
    if (blue < 16) {
       im.setBlue(x,y, blue * 16)
       im.setRed(x,y, blue * 16 )
    }

    }
  }
  print(im);
  ```

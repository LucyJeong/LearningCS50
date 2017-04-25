# Week 6 - HTTP [📹](https://youtu.be/6iXhAZKOVGE)

## Note
![note](/Week6/note_week6.jpg)

## Voca
- interconnection : 연결
  - the internet really is the __interconnection__
- turn out : 나타나다
- typically : 일반적으로, 전형적으로
- construct : 만들다, 세우다, 건설하다
- packet : 작은 다발
  - My Mac __constructs__ what we call a __packet__ of information.
- somehow : 어쨋든, 여하튼
- look up : 검색
- authoritatively : 명령조로
- there by : 그것에 의하여
- fragment : 파편
- transmit : 전송하다
- accurate : 정확한

## etc
- **Internet Primer**[📹](https://youtu.be/oS_NAORY2Jw)
  - 처음의 컴퓨터는 command-line으로 사용자와 인터렉션을 함. 지금처럼 그래픽 유저 인터페이스 같은 것은 없었음.
  - 어떻게 사람과 컴퓨터가 인터넷에서 인터렉하는지 알아보자.
  - 높은 수준이 아니라 간단한 수준에 대해서 이야기 할 것임.
  - IPv6 (version 6 Internet Protocol)
    - IPv4 주소는 빠른 속도로 고갈되었으며, 인터넷에 접속된 컴퓨터는 기하급수적인 속도로 증가하고 있다.그래서
    - IP 주소의 길이가 128비트로 늘어났다.
    - 주소표현 :  16비트를 16진수로 표현하여 8자리로 나타낸다. `2001:0db8:85a3:08d3:1319:8a2e:0370:7334`
    - 그러나 대부분의 자리가 0의 숫자를 갖게 되므로, 0000을 하나의 0으로 축약하거나, 혹은 아예 연속되는 0의 그룹을 없애고 ':' 만을 남길 수 있다. 따라서 아래의 IPv6 주소들은 모두 같은 주소를 나타낸다.
    `2001:0DB8::1428:57ab`
  - DHCP(Dynamic Host Configuration Protocol)
    - DHCP는 네트워크 관리자들이 조직 내의 네트워크 상에서 IP 주소를 중앙에서 관리하고 할당해줄 수 있도록 해주는 프로토콜이다. 인터넷의 TCP/IP 프로토콜에서는, 각 컴퓨터들이 고유한 IP 주소를 가져야만 인터넷에 접속할 수 있다. 조직에서 컴퓨터 사용자들이 인터넷에 접속할 때, IP 주소는 각 컴퓨터에 반드시 할당되어야만 한다. DHCP를 사용하지 않는 경우에는, 각 컴퓨터마다 IP 주소가 수작업으로 입력되어야만 하며, 만약 컴퓨터가 네트워크의 다른 부분에 속한 장소로 이동되면 IP 주소를 새로이 입력해야 한다. DHCP는 네트워크 관리자가 중앙에서 IP 주소를 관리하고 할당하며, 컴퓨터가 네트워크의 다른 장소에 접속되었을 때 자동으로 새로운 IP 주소를 보내줄 수 있게 해준다.
  - DNS (Domain name system)
  - Access Point
    - The IP address is assigned to a router, whose job it is to act as a traffic cop that allows data requests from all of devices on processed through a single IP address.
    - WAP (wireless access point) : 컴퓨터 네트워크에서 와이파이, 블루투스 관련 표준을 이용하여 무선 장치들을 유선 장치에 연결할 수 있게 하는 장치를 가리킨다. 공유기.
- **IP**[📹](https://youtu.be/m-xgBan9V0U)
  - Internet Protocol
  - internet is interconnected network
  - This is where **router** come back into play.
  - This is sort of similar to the concept of recursion
  

- What is Cache?
  - 컴퓨터의 중앙처리장치 (CPU)는 메모리로부터 데이터를 읽거나 쓰는 기능을 한다. 그런데 CPU의 처리속도가 훨씬 빠르기 때문에 캐쉬(저장소) 메모리를 두어 자주 읽거나 쓰는 데이터를 저장해둔다. 이렇게하면 CPU의 작업속도가 빨라진다. 인터넷 웹브라우저에서도 캐쉬를 설정, 웹사이트에서 읽은 데이터를 하드디스크에 저장해 두었다가 같은 내용을 읽을 때는 하드디스크에서 읽도록 한다. 속도가 다른 두 장치 사이에 두어 데이터 전송속도를 빠르게 하기 위한 것이 캐쉬다.
  - [캐시와 쿠키의 차이점](http://utk-unm.blogspot.kr/2015/09/cache-vs-cookies.html)

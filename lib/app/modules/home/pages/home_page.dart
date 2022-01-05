import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_b_w/app/modules/home/models/about_me.dart';
import 'package:portfolio_b_w/app/modules/home/store/home_store.dart';
import 'package:portfolio_b_w/constants/constants.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = 'HomePage'}) : super(key: key);
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final store = Provider.of<HomeStore>(context);

    store.setShowBackToTop(store.scrollController);
    return Observer(builder: (_) {
      return Scaffold(
        floatingActionButton: store.showBackToTop == false
            ? null
            : FloatingActionButton(
                backgroundColor: kBgDarkColor,
                onPressed: store.scrollToTop,
                child: const Icon(Icons.arrow_upward),
              ),
        body: SingleChildScrollView(
          controller: store.scrollController,
          child: Column(
            children: [
              _blackBody(size),
              _whiteBody(size),
            ],
          ),
        ),
      );
    });
  }

// ? First Component
  Container _blackBody(Size size) {
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding),
      height: size.height,
      width: size.width,
      decoration: const BoxDecoration(
        color: kBgDarkColor,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 50,
            child: Text(
              'Portfólio',
              style: GoogleFonts.bebasNeue(color: kBgLightColor, fontSize: 50),
            ),
          ),
          const Spacer(),
          _infoMoreAvatar(size),
          const Spacer(),
          _roll(size)
        ],
      ),
    );
  }

// ? Roll Component/BlackBody
  SizedBox _roll(Size size) {
    return SizedBox(
      height: size.height * 0.1,
      child: AnimatedTextKit(
        animatedTexts: [
          RotateAnimatedText(
            'role e descubra mais...',
            textStyle: GoogleFonts.openSans(fontSize: 14, color: kTextColor),
          ),
          RotateAnimatedText(
            '↓↓↓↓↓',
            textStyle: GoogleFonts.openSans(fontSize: 14, color: kTextColor),
          ),
        ],
        pause: const Duration(milliseconds: 5000),
        repeatForever: false,
      ),
    );
  }

// ? Info more Avatar Component/BlackBody
  Row _infoMoreAvatar(Size size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: size.width * 0.5,
                child: AnimatedTextKit(
                  repeatForever: true,
                  pause: const Duration(milliseconds: 4000),
                  stopPauseOnTap: true,
                  animatedTexts: [
                    TypewriterAnimatedText(
                      'Olá, meu nome é Emanuel.',
                      textStyle: GoogleFonts.openSans(
                        color: kTextColor,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    TypewriterAnimatedText(
                      'Tenho 19 anos e sou estudante de Ciências da Computação.',
                      textStyle: GoogleFonts.openSans(
                        color: kTextColor,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    TypewriterAnimatedText(
                      'Estou focado em mobile e web, com o Framework Flutter.',
                      textStyle: GoogleFonts.openSans(
                        color: kTextColor,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.15,
            ),
            _aboutMe(size),
          ],
        ),
        CircleAvatar(
          radius: size.width * 0.15,
          backgroundColor: Colors.transparent,
          backgroundImage: const AssetImage('assets/images/perfil.png'),
        ),
      ],
    );
  }

// ? About Me Carousel Component/BlackBody
  SizedBox _aboutMe(Size size) {
    List<AboutMe> _cards = [
      AboutMe(
        'MINHA HISTÓRIA',
        'Minha infância foi ligada em tecnologias, porém apenas em 2020, no lockdown, que me apaixonei por programação, ingressei em uma faculdade federal, onde estou cursando atualmente.',
      ),
      AboutMe('Sobre Mim',
          'Nascido e criado em Fortaleza, Ceará, Brasil. Amo jogos, músicas e boas companhias. Adoro codar e fico extremamente feliz quando resolvo um bug :) Meu objetivo profissional é evoluir como desenvolvedor, aprendendo e criando novas tecnologias.'),
    ];
    return SizedBox(
      width: size.width * 0.4,
      child: CarouselSlider(
        options: CarouselOptions(
          height: size.height * 0.3,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 10),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.linearToEaseOut,
          enlargeCenterPage: true,
          viewportFraction: 0.9,
        ),
        items: _cards.map((card) {
          return Builder(
            builder: (BuildContext context) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    card.title.toUpperCase(),
                    style: GoogleFonts.openSans(
                      color: kBgLightColor,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Divider(
                    indent: 100,
                    endIndent: 100,
                    height: 5,
                    color: Colors.white,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    card.description,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.openSans(
                      color: kTextColor,
                      fontSize: 16,
                    ),
                  ),
                ],
              );
            },
          );
        }).toList(),
      ),
    );
  }
}

// ? Second Component
Container _whiteBody(Size size) {
  return Container(
    width: size.width,
    height: size.height,
    decoration: const BoxDecoration(
      color: kBgLightColor,
    ),
    child: Column(
      children: [
        const SizedBox(height: 16),
        Text(
          'Habilidades'.toUpperCase(),
          style: GoogleFonts.openSans(
            fontSize: 48,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: kDefaultPadding * 3),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _firstColumn(size),
            _secondColumn(size),
          ],
        )
      ],
    ),
  );
}

// ? Second Column with Skills
SizedBox _secondColumn(Size size) {
  return SizedBox(
    width: size.width * 0.5,
    child: Column(
      children: [
        Text(
          'Cursos',
          style: GoogleFonts.openSans(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: kDefaultPadding * 2),
        Container(
          width: size.width * 0.35,
          height: size.height * 0.35,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 10),
                  blurRadius: 20,
                  color: kTextColor.withOpacity(0.33),
                ),
                const BoxShadow(
                  offset: Offset(0, -10),
                  blurRadius: 20,
                  color: kBgLightColor,
                ),
              ]),
        )
      ],
    ),
  );
}

// ? First Column with Languages and Frameworks
SizedBox _firstColumn(Size size) {
  return SizedBox(
    width: size.width * 0.5,
    child: Column(
      children: [
        Text(
          'Linguagens e Frameworks',
          style: GoogleFonts.openSans(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: kDefaultPadding * 2),
        Container(
          width: size.width * 0.35,
          height: size.height * 0.35,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 10),
                  blurRadius: 20,
                  color: kTextColor.withOpacity(0.33),
                ),
                const BoxShadow(
                  offset: Offset(0, -10),
                  blurRadius: 20,
                  color: kBgLightColor,
                ),
              ]),
        ),
      ],
    ),
  );
}

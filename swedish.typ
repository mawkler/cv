#import "cv.typ": cv, experience, skill, list_interests
#import "@preview/fontawesome:0.1.0": *

#set text(lang: "se")

#cv(
  name: "Melker Ulander",
  links: (
    (link: "mailto:melker.ulander@pm.me", icon: fa-at()),
    (link: "https://github.com/mawkler", display: "mawkler", icon: fa-github()),
    (link: "https://fosstodon.org/@mawkler", display: "fosstodon.org/@mawkler", icon: fa-mastodon()),
    (link: "https://linkedin.com/in/melker-ulander/", display: "Melker Ulander", icon: fa-linkedin()),
  ),
  occupation: "Mjukvaruutvecklare",
  tagline: [Söker möjligheter att arbeta i Rust. Spana in vad jag har för mig på #link("https://github.com/mawkler", "min GitHub").],
  compiled_date: [Kompilerad: #datetime.today().display()],
  left_column: [
    == Arbetslivserfarenhet

    #experience("images/omegapoint.png")[Mjukvaruutvecklarkonsult][Omegapoint][2021 --- nuvarande][Stockholm]

    De här konsultuppdragen har jag haft hittils:

    - RESTfull back-end-utveckling med Azure Functions i TypeScript/Node för en värmepumpstillverkare. Primärt fokus på DDD, säkerhet och CI/CD.
    - Java microservices i Kubernetes för en veterinärklinik. Fokus på DevOps och CI/CD, samt "funktionell Java".
    - RESTfull back-end-utveckling i Go och Azure/Kubernetes för ett energiföretag. Bicep IaC, CI/CD.

    #experience("images/ericsson.png")[Mjukvaruutvecklare][Ericsson][2016 --- 2017][Kista, Stockholm]

    Under mitt jobb på Ericssons internship under sommar 2016 och 2017 byggde jag verktyg som förenklar hanteringen av databaser för radiomjukvara. Under den första sommaren arbetade jag primärt på en webb-klient skriven i Angular. Under den andra sommaren arbetade jag med text-parsning och byggde en webb-server i Python. Arbetet gjordes agilt i team på 2--5 personer.

    #experience("images/hello-world.png")[Programmings- och CAD-lärare][Hello World!][2018][Stockholm]

    Hello World! är en ideell förening som lär ut digitala färdigheter till barn och ungdomar. Jag lärde bland annat ut programmering av mikrokontrollers som exempelvis Arduinos i Python, programmering i språket Lua samt CAD och 3D-printing. Mitt jobb på Hello World! har stärkt både mina ledar- och pedagogiska färdigheter. Det har också bekräftat för mig hur mycket jag tycker om att lära ut.

    #experience("images/uppsala.png")[Labbhandledare i datavetenskap][Uppsala Universitet][2017, 2019][Uppsala]

    Jag assisterade studenter under laborationer i kursen Programkonstruktion och Datastrukturer. Labbarna bestod av många praktiska moment så som problemlösning i form av programmering i Haskell, beräkning av tidskomplexitet, induktionsbevis, mm. Som handledare har jag fått stärka min förmåga i pedagogik och undervisning.

    == Utbildning

    #experience("images/uppsala.png")[Civilingenjörsexamen i Informationsteknologi, 300 hp --- inriktning mjukvaruutveckling][Uppsala Universitet][2015-2021][Uppsala]

    Programmering, matematik och människor är tre viktiga grundstenar i programmet. Jag har bland mycket annat lärt mig kring arbete i tvärfunktionella (cross-functional) teams, ta fram mjukvarukrav samt agil produktutveckling.

    #experience("images/wik.png")[Musikprogrammet][Wiks Folkhögskola][2014-2015][Uppsala]

    En musikutbildning med fokus på musikalisk bredd och övning i eget musikaliskt uttryck i låtskrivande såväl som framförande, samt musikteori.

    == Intressen

    #list_interests((
      "Neovim",
      "Open source",
      "Rust",
      "Verktyg/Tooling",
      "Musik",
      "Datorspel",
      "Tangentbord",
      "Brädspel",
      "Klättring",
      "Snowboardåkning"
    ))
  ],
  right_column_header: "Programmeringsfärdigheter",
  languages_header: "Språk",
  other_technologies_header: "Andra tekniker",
  right_column: [
    === Metodologier

    #skill("Domändriven Design", 4)
    #skill("Agile", 4)
    #skill("REST", 4)
    #skill("DevOps", 4)

    == Talade språk

    #skill("Svenska", 5)
    #skill("Engelska", 5)
    #skill("Spanska", 1)

    == Andra meriter

    - #link("https://www.certmetrics.com/amazon/public/download_e_cert.aspx?cert=3F3BD0A7985F84E97A12484A7942571EO261A52FED86F80D97C4722E03C3903D0", "AWS Certified Cloud Practitioner certificate")
    - B-körkort sedan 2015
  ],
  footer_content: [Mitt CV är open-source. Om du är nyfiken så finns källkoden på #link("https://github.com/mawkler/cv").]
)

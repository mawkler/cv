#import "cv.typ": cv, experience, skill, list_interests
#import "@preview/fontawesome:0.1.0": *

#cv(
  name: "Melker Ulander",
  links: (
    (link: "mailto:melker.ulander@pm.me", icon: fa-at()),
    (link: "https://github.com/mawkler", display: "mawkler", icon: fa-github()),
    (link: "https://fosstodon.org/@mawkler", display: "fosstodon.org/@mawkler", icon: fa-mastodon()),
    (link: "https://linkedin.com/in/melker-ulander/", display: "Melker Ulander", icon: fa-linkedin()),
  ),
  occupation: "Software Engineer",
  tagline: [Looking for opportunities to work in Rust. Check out what I'm up to #link("https://github.com/mawkler/cv", "my GitHub").],
  compiled_date: [Compiled: #datetime.today().display()],
  left_column: [
    == Work Experience

    #experience("images/omegapoint.png")[Software engineering consultant][Omegapoint][2021 --- present][Stockholm]

    These are the consulting assignments I've worked on so far:

    - RESTful back-end development with Azure Functions in TypeScript/Node for a heat-pump manufacturer. Primary focus on DDD, security and CI/CD.
    - Java microservices in Kubernetes for a veterinary clinic. Main focus on DevOps and CI/CD, as well as "functional Java".
    - RESTful Go back-end development in Azure/Kubernetes for an energy company. Bicep IaC, CI/CD.

    #experience("images/ericsson.png")[Software developer][Ericsson][2016 --- 2017][Kista, Stockholm]

    My work as a summer intern during 2016 as well as 2017 involved building tools that simplify the management of radio  software databases. During my first summer I worked mainly on a web client written in Angular. During my second summer I worked with text parsing and building a web-server in Python. The work was done in an agile manner in teams of 2--5 people.

    #experience("images/hello-world.png")[Programming and CAD teacher][Hello World!][2018][Stockholm]

    Hello World! is a Swedish non-profit association that teaches kids and teenagers digital skills. I taught programming of microcontrollers such as Arduinos using Python, CAD and 3D-printing, as well as Lua programming. My work at Hello World! improved both my pedagogical and leadership skills. It also confirmed to me how much I love teaching.

    #experience("images/uppsala.png")[Computer science lab teacher][Uppsala University][2017, 2019][Uppsala]

    I taught and guided students during computer labs in the course Program Design and Data Structures. The labs included many practical parts like Haskell programming, calculating time complexities, proof by induction, etc. During this work I got the chance to improve my pedagogical skills.

    == Education

    #experience("images/uppsala.png")[Master Programme in Computer and Information Engineering, 300 c --- Software Engineering Specialization][Uppsala University][2015-2021][Uppsala]

    Programming, mathematics and problem solving are three basic building blocks of the programme. For instance, I gained experience working in cross-functional teams, creating software requirements as well as product development in an agile manner.

    #experience("images/wik.png")[Music programme][Wik's Folkhögskola][2014-2015][Uppsala]

    Music education with focus on musical variety and expression in song writing as well as live performance and music theory.

    == Interests

    #list_interests((
      "Neovim",
      "Open source",
      "Rust",
      "Tooling",
      "Music",
      "Computer games",
      "Keyboards",
      "Board games",
      "Climbing",
      "Snowboarding"
    ))
  ],
  right_column_header: "Programming Skills",
  languages_header: "Languages",
  other_technologies_header: "Other Technologies",
  right_column: [
    === Methodologies

    #skill("Domain-Driven Design", 4)
    #skill("Agile", 4)
    #skill("REST", 4)
    #skill("DevOps", 4)

    == Spoken Languages

    #skill("Swedish", 5)
    #skill("English", 5)
    #skill("Spanish", 1)

    == Other Merits

    - #link("https://www.certmetrics.com/amazon/public/download_e_cert.aspx?cert=3F3BD0A7985F84E97A12484A7942571EO261A52FED86F80D97C4722E03C3903D0", "AWS Certified Cloud Practitioner certificate")
    - Driver's license class B since 2015
  ],
  footer_content: [My CV is open-source. If you're curious, its source code is available at #link("https://github.com/mawkler/cv").]
)

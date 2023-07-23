#import "cv.typ": cv, experience, skill, LaTeX, bubble, list_interests
#import "@preview/fontawesome:0.1.0": *

#cv(
  name: "Melker Ulander",
  links: (
    (link: "mailto:melker.ulander@pm.me", icon: fa-at()),
    (link: "https://github.com/mawkler", display: "mawkler", icon: fa-github()),
    (link: "https://fosstodon.org/@mawkler", display: "fosstodon.org/@mawkler", icon: fa-mastodon()),
    (link: "https://linkedin.com/in/melker-ulander/", display: "Melker Ulander", icon: fa-linkedin()),
  ),
  tagline: [Software Engineer],
  [
    == Work Experience

    #experience("images/omegapoint.png")[Software engineering consultant][Omegapoint][2021 --- present][Stockholm]

    RESTful back-end development with Azure Functions in TypeScript/Node for a heat-pump manufacturer. Primary focus on domain-driven design, security and CI/CD. Several web-APIs were designed, deployed and maintained.

    #experience("images/ericsson.png")[Software developer][Ericsson][2016 --- 2017][Kista, Stockholm]

    My work as a summer intern during 2016 as well as 2017 involved building tools that simplify the management of radio  software databases, from scratch. During my first summer I worked mainly on a web client written in AngularJS. During my second summer I worked primarily with text parsing using Python. The work was done in an agile manner in teams of 2--5 people.

    #experience("images/hello-world.png")[Programming and CAD teacher][Hello World!][2018][Stockholm]

    Hello World! is a Swedish non-profit association that teaches kids and teenagers digital skills. I taught CAD and 3D-printing, programming of microcontrollers such as Arduinos using Python, as well as Lua programming. My work at Hello World! improved both my pedagogical and leadership skills. It also confirmed to me how much I love teaching.

    #experience("images/uppsala.png")[Computer science lab teacher][Uppsala University][2017, 2019][Uppsala]

    I taught and guided students during computer labs in the course Program Design and Data Structures. The labs included many practical parts like Haskell programming, calculating time complexities, proof by induction, etc. During this work I got the chance to improve my pedagogical skills.

    == Education

    #experience("images/uppsala.png")[Master Programme in Computer and Information Engineering, 300 c --- Software Engineering Specialization][Uppsala University][2015-2021][Uppsala]

    Programming, mathematics and problem solving are three basic building blocks of the programme. For instance, I gained experience working in cross-functional teams, creating software requirements as well as product development in an agile manner.

    #experience("images/wik.png")[Music programme][Wik's Folkhögskola][2014-2015][Uppsala]

    Music education focused on musical variety and expression in song writing as well as live performance and music theory.

    #experience("images/viktor-rydberg.png")[Natural Science Program with aesthetic orientation music][Viktor Rydberg Gymnasium Odenplan][2011-2014][Stockholm]

    Natural science courses, as well as one in digital content creation.

    == Interests

    #list_interests((
      "Neovim",
      "Open source",
      "Rust",
      "Tooling",
      "Music",
      "Computer games",
      "Board games",
      "Climbing",
      "Snowboarding"
    ))
  ],
  [
    == Programming Skills

    === Languages

    #skill("Rust", 3)
    #skill("TypeScript", 5)
    #skill("Lua", 4)
    #skill("Python", 3)
    #skill("Java", 3)
    #skill("Haskell", 3)
    #skill("SQL", 3)
    #skill("HTML/CSS", 4)
    #skill("C/C++", 2)
    #skill("C#", 2)
    #skill("R", 1)
    #skill("Typst", 2)
    #skill(LaTeX, 4)

    === Other technologies

    #skill("Vim/Neovim", 5)
    #skill("Linux", 4)
    #skill("Git", 5)
    #skill("OpenAPI/Swagger", 3)
    #skill("Jest", 5)
    #skill([Micro#{text(12pt, [#sym.ast.op #h(-3pt) #sym.ast.op])}ft Azure], 3)
    #skill("Serverless (Azure Functions)", 3)

    === Methodologies

    #skill("Domain-Driven Design", 4)
    #skill("Agile", 3)
    #skill("REST", 4)

    == Spoken Languages

    #skill("Swedish", 5)
    #skill("English", 5)
    #skill("Spanish", 1)

    == Other Merits

    - Driver's license class B since 2015
  ],
)

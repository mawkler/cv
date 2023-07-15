#import "alta-typst.typ": alta, experience, skill

#alta(
  name: "John Smith",
  links: (
    (name: "email", link: "mailto:contact@example.com"),
    (name: "website", link: "https://example.com/", display: "example.com"),
    (name: "github", link: "https://github.com/example", display: "@example"),
    (name: "linkedin", link: "https://linkedin.com/in/example", display: "John Smith"),
  ),
  tagline: [Software Engineer. #lorem(10)],
  [
    == Experience

    #experience[Junior Software Engineer][Company Two][Jul 2021 --- Jul 2022][London, UK]

    - #lorem(15)
    - #lorem(10)
    - #lorem(24)

    #experience[Junior Systems Administrator][Company 1][Oct 2019 --- Jul 2021][Bournemouth, UK]

    - #lorem(20)
    - #lorem(10)

    References available on request

    == Education

    #experience[Higher][University Name][Sep 2019 --- Jul 2023][Location, UK]

    B.Sc. Computer Science with Year in Industry. #lorem(10)

    #experience[A-Levels][Place Grammar School][Sep 2017 --- Aug 2019][Place, UK]

    #lorem(10)

    == Interests

    - Walks on the beach
    - #lorem(8)
    - #lorem(6)
    - #lorem(4)
    - #lorem(12)
  ],
  [
    == Projects

    ==== Some project

    #lorem(30)

    ==== Project with a longer name

    #lorem(20)

    ==== Employee Appraisal System

    - #lorem(15)
    - #lorem(10)
    - #lorem(20)

    ==== Hackathons

    / Hack1: #lorem(20)
    / TwoHackTwo: #lorem(15)

    ==== Project 4

    - #lorem(30)
    - #lorem(10)

    ==== Project Five

    - #lorem(23)

    == Skills

    #skill("Go", 5)
    #skill("TypeScript", 3)
    #skill("Git", 1)
    #skill("Typst", 1)
  ],
)

#let primary_color = rgb("#3E0C87") // vivid purple

#let icon(name, shift: 1.5pt) = {
  box(
    baseline: shift,
    height: 10pt,
    image(name + ".svg")
  )
  h(3pt)
}

#let findMe(services) = {
  set text(8pt)
  let icon = icon.with(shift: 2.5pt)

  services.map(service => {
    icon(service.name)

    if "display" in service.keys() {
      link(service.link)[#{service.display}]
    } else {
      link(service.link)
    }
  }).join(h(10pt))
  [

  ]
}

#let experience(name, company_name, period, location) = {
  heading(level: 3, {
    name; h(1fr); icon("calendar"); text(9pt, period)
  })
  company_name; h(1fr); icon("location"); text(9pt, location)
}

#let max_rating = 5
#let skill(name, rating) = {
  let circles = range(1, max_rating).map(i => {
    let color = primary_color
    if i > rating {
      color = rgb("#c0c0c0") // grey
    }

    box(circle(radius: 4pt, fill: color))
  }).join(h(4pt))

  name; h(1fr); circles; [\ ]
}


#let alta(
  name: "",
  links: (),
  tagline: [],
  left,
  right,
) = {
  set text(9.8pt, font: "IBM Plex Sans")
  set page(
    margin: (x: 54pt, y: 52pt),
  )

  show heading.where(
    level: 2
  ): it => text(fill: primary_color, [
    #{it.body}
    #v(-7pt)
    #line(length: 100%, stroke: 1pt + primary_color)
  ])

  show heading.where(level: 4): it => text(fill: primary_color, it.body)

  [= #name]

  findMe(links)

  tagline

  grid(
    columns: (0.49fr, 0.49fr),
    gutter: 15pt,
    left,
    right,
  )
}

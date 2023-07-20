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
}

#let experience(name, company_name, period, location) = {
  heading(level: 3, {
    name; h(1fr); icon("calendar"); text(9pt, period)
  })
  v(-3pt)
  text(style: "italic", company_name); h(1fr); icon("location"); text(9pt, location)
}

#let max_rating = 5
#let skill(name, rating) = {
  let circles = range(0, max_rating).map(i => {
    let color = primary_color
    if i >= rating {
      color = rgb("#c0c0c0") // grey
    }

    box(circle(radius: 4pt, fill: color))
  }).join(h(4pt))

  name; h(1fr); circles; [\ ]
}

// Produces the LaTeX symbol
#let LaTeX = style(styles => {
  let l = measure(text(1em, "L"), styles)
  let a = measure(text(0.7em, "A"), styles)
  let A = text(0.7em, baseline: a.height - l.height, "A")
  let e = measure(text(1em, "E"), styles)
  let E = text(1em, baseline: e.height / 4, "E")
  box("L" + h(-0.3em) + A + h(-0.1em) + "T" + h(-0.1em) + E + h(-0.125em) + "X")
})

#let header_info(name, links, tagline, image_path) = {
  grid(
    columns: (6fr, 1fr),
    gutter: 15pt,
    align(start + horizon, {
      [= #name]
      tagline
      v(0pt)
      findMe(links)
    }),
    align(end + horizon, image(image_path, height: 8%))
  )
}

#let alta(
  name: "",
  links: (),
  tagline: [],
  left,
  right,
) = {
  set text(9.8pt, font: "IBM Plex Sans")
  set page(margin: (x: 35pt, y: 30pt))

  show heading.where(
    level: 2
  ): it => text(fill: primary_color, [
    #{it.body}
    #v(-7pt)
    #line(length: 100%, stroke: 1pt + primary_color)
  ])

  show heading.where(level: 4): it => text(fill: primary_color, it.body)

  header_info(name, links, tagline, "gru.png")

  grid(
    columns: (0.65fr, 0.35fr),
    gutter: 15pt,
    left,
    right,
  )
}

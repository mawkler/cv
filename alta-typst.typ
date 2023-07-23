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
  set table(
    inset: 0pt,
    stroke: none
  )
  set align(horizon)
  let row_spacing = 2pt
  let right_text_spacing = 9pt

  table(
    columns: (20pt, 1fr),
    column-gutter: 5pt,
    image("gru.png"), // TODO: dependency inject image, perhaps fallback to some fontawesome glyph
    table(
      columns: (1fr, auto),
      {
        set par(justify: false)

        text(weight: "bold", name)
      },
      {
        set align(right + bottom)
        set text(right_text_spacing)

        period; h(3pt); icon("calendar")
      },
      {
        v(row_spacing)
        text(style: "italic", company_name)
      },
      {
        set text(right_text_spacing)
        set align(right)

        v(row_spacing)
        location; h(3pt); icon("location")
      },
    )
  )
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

#let bubble(content) = {
  box(
    fill: primary_color,
    inset: 3.5pt,
    radius: 6pt,
    text(weight: "bold", fill: white, content)
  )
}

#let list_interests(interests) = {
  set par(leading: 5pt) // Make line height slightly smaller
  interests.map(interest => bubble(interest)).join(h(4pt))
}

#let alta(
  name: "",
  links: (),
  tagline: [],
  left,
  right,
) = {
  set text(9.8pt, font: "IBM Plex Sans")
  set page(margin: (x: 32pt, y: 25pt))

  show heading.where(
    level: 2
  ): it => text(fill: primary_color, [
    #{it.body}
    #v(-7pt)
    #line(length: 100%, stroke: 1pt + primary_color)
  ])

  show heading.where(level: 4): it => text(fill: primary_color, it.body)

  header_info(name, links, tagline, "gru.png")

  v(-8pt)

  grid(
    columns: (0.65fr, 0.35fr),
    gutter: 15pt,
    left,
    right,
  )
}

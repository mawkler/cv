#import "@preview/fontawesome:0.1.0": *

#let primary_color = rgb("#3E0C87") // vivid purple
#let dark_gray_color = rgb("#7c7c7c")

#let sans_serif_font = "Fira Sans"
#let code_font = "Fira Code"

#let contact_info(services) = {
  let glyph(icon) = {
    set text(10pt, fill: primary_color)
    box(baseline: 2.5pt, height: 10pt, text(icon))
    h(3pt)
  }

  set text(8pt, font: code_font)

  services.map(service => {
    glyph(service.icon)

    if "display" in service.keys() {
      link(service.link, service.display)
    } else {
      link(service.link)
    }
  }).join(h(10pt))
}

#let header_info(name, links, tagline, image_path) = {
  set text(font: sans_serif_font)
  grid(
    columns: (6fr, 1fr),
    gutter: 15pt,
    align(start + horizon, {
      [= #name]
      tagline
      v(0pt)
      contact_info(links)
    }),
    align(end + horizon, image(image_path, height: 8%))
  )
}

#let experience(image_path, name, company_name, period, location) = {
  set table( inset: 0pt, stroke: none)
  set align(horizon)
  set text(font: sans_serif_font)
  let row_spacing = 4pt
  let right_text_font_size = 9pt

  v(5pt)

  table(
    columns: (20pt, 1fr),
    column-gutter: 5pt,
    image(image_path),
    table(
      columns: (1fr, auto),
      {
        set par(justify: false)

        text(weight: "bold", name)
      },
      {
        set align(right + bottom)
        set text(right_text_font_size, weight: "light")

        period; h(3pt); text(fill: primary_color, fa-calendar(10pt))
      },
      {
        v(row_spacing)
        text(style: "italic", company_name)
      },
      {
        set text(right_text_font_size, weight: "light")
        set align(right)

        v(row_spacing)
        location; h(3pt); text(fill: primary_color, fa-location-dot(10pt))
      },
    )
  )

  v(-5pt)
}

#let skill(name, rating) = {
  let max_rating = 5

  let circles = range(0, max_rating).map(i => {
    let color = primary_color
    if i >= rating {
      color = rgb("#c0c0c0") // gray
    }

    box(circle(radius: 4pt, fill: color))
  }).join(h(4pt))

  name; h(1fr); circles; [\ ]
}

// Produces the LaTeX symbol
#let LaTeX = style(styles => {
  set text(font: "Times New Roman") // TODO: look up actual name
  let l = measure(text(1em, "L"), styles)
  let a = measure(text(0.7em, "A"), styles)
  let A = text(0.7em, baseline: a.height - l.height, "A")
  let e = measure(text(1em, "E"), styles)
  let E = text(1em, baseline: e.height / 4, "E")
  box("L" + h(-0.3em) + A + h(-0.1em) + "T" + h(-0.1em) + E + h(-0.125em) + "X")
})

#let bubble(content) = {
  box(
    fill: primary_color,
    inset: 4pt,
    radius: 6pt,
    text(weight: "bold", fill: white, font: sans_serif_font , content)
  )
}

#let list_interests(interests) = {
  set par(leading: 5pt, justify: false)
  interests.map(interest => bubble(interest)).join(h(4pt))
}

#let footer(content) = [
  #set align(center)
  #set text(6.5pt, fill: dark_gray_color, font: code_font)
  #show link: underline

  #line(length: 100%, stroke: 0.5pt + dark_gray_color)
  #fa-chevron-right() #content
]

#let cv(name: "", links: (), tagline: [], left, right, footer_content) = {
  set text(9.8pt, font: "IBM Plex Sans")
  set page(margin: (x: 32pt, y: 35pt), footer: footer(footer_content))
  set par(justify: true)

  show heading.where(level: 2): it => text(fill: primary_color, [
    #v(5pt)
    #{it.body}
    #v(-7pt)
    #line(length: 100%, stroke: 1pt + primary_color)
  ])
  show heading.where(level: 4): it => text(fill: primary_color, it.body)
  show heading: it => text(font: sans_serif_font, it)

  header_info(name, links, tagline, "images/profile.png")

  v(-8pt)

  grid(
    columns: (1fr, 0.54fr),
    gutter: 15pt,
    left,
    right,
  )
}

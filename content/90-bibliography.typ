#pagebreak()

#align(center)[
  #text(size: 16pt, weight: "bold")[БИБЛИОГРАФИЧЕСКИЙ СПИСОК]
]

#v(24pt)

#show bibliography: it => [
  #set par(
    leading: 1.5em,
    spacing: 1.5em,
    justify: true,
  )
  #it
]

#bibliography(
  "../works.bib",
  title: none,
  style: "../gost-r-7-0-5-2008-numeric-indent.csl",
)

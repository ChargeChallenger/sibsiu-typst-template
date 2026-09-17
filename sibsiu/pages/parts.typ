#let institution-header(
  ministry,
  institution_line_1,
  institution_line_2,
  university,
  department,
) = [
  #align(center)[
    #ministry

    #institution_line_1

    #institution_line_2

    #university
  ]

  #v(24pt)

  #align(center)[#department]
]

#let underlined-field(
  width: 100%,
  value: none,
  caption: none,
  reserve: 0.55em,
) = block(width: width)[
  #block(width: 100%, height: reserve)[
    #align(center)[
      #if value != none [
        #value
      ]
    ]
  ]
  #line(length: 100%)
  #if caption != none [
    #v(-2pt)
    #align(center)[
      #text(size: 10pt)[#caption]
    ]
  ]
]

#let value-line(width: 100%, value: none, reserve: 0.2em) = block(width: width)[
  #block(width: 100%, height: reserve)[
    #align(center)[
      #if value != none [
        #value
      ]
    ]
  ]
  #line(length: 100%)
]

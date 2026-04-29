#let template(doc) = [
  #set page(
    paper: "a4",
    margin: (
      top: 20mm,
      bottom: 20mm,
      left: 20mm,
      right: 10mm,
    ),
  )

  #set text(
    font: "Times New Roman",
    size: 14pt,
    lang: "ru",
  )

  #set par(
    first-line-indent: (
      amount: 1.25cm,
      all: true,
    ),
    leading: 1em,
    spacing: 1em,
    justify: true,
  )

  #set heading(numbering: "1.1.1.1")

  #show heading.where(level: 1): it => [
    #block(inset: (left: 1.25cm))[
      #set text(
        size: 16pt,
        weight: "bold",
      )
      #set par(leading: 1.5em)
      #it
    ]
    #v(24pt, weak: true)
  ]

  #show heading.where(level: 2): it => [
    #v(24pt, weak: true)
    #block(inset: (left: 1.25cm))[
      #set text(
        size: 14pt,
        weight: "bold",
      )
      #set par(leading: 1.5em)
      #it
    ]
    #v(24pt, weak: true)
  ]

  #show heading.where(level: 3): it => [
    #v(24pt, weak: true)
    #block(inset: (left: 1.25cm))[
      #set text(
        size: 14pt,
        weight: "bold",
      )
      #set par(leading: 1.5em)
      #it
    ]
    #v(24pt, weak: true)
  ]

  #show heading.where(level: 4): it => [
    #v(24pt, weak: true)
    #block(inset: (left: 1.25cm))[
      #set text(
        size: 14pt,
        weight: "regular",
      )
      #set par(leading: 1.5em)
      #it
    ]
    #v(24pt, weak: true)
  ]

  #show figure.where(kind: image): set figure(
    supplement: [Рисунок],
  )

  #show figure.where(kind: image): set figure.caption(
    separator: [ – ],
  )

  #show figure.where(kind: image): it => [
    #v(12pt)
    #it
    #v(12pt)
  ]

  #show list: it => [
    #for item in it.children [
      #set par(
        first-line-indent: (
          amount: 1.25cm,
          all: true,
        ),
        leading: 1em,
        spacing: 1em,
        justify: true,
      )
      — #item.body
    ]
  ]

  #let ru-letters = (
    "а",
    "б",
    "в",
    "г",
    "д",
    "е",
    "ж",
    "з",
    "и",
    "к",
    "л",
    "м",
    "н",
    "о",
    "п",
    "р",
    "с",
    "т",
    "у",
    "ф",
    "х",
    "ц",
    "ч",
    "ш",
    "щ",
    "э",
    "ю",
    "я",
  )

  #let ru(n) = ru-letters.at(n - 1)


  #set enum(
    numbering: (..n) => {
      let nums = n.pos()

      if nums.len() == 0 {
        ""
      } else {
        let level = nums.len() - 1
        let last = nums.last()

        if level == 0 {
          ru-letters.at(last - 1, default: str(last)) + ")"
        } else if level == 1 {
          str(last) + ")"
        } else {
          str(last) + ")"
        }
      }
    },
    full: true,
  )

  #doc
]

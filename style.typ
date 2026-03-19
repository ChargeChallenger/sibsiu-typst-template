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
  )

  #set par(
    first-line-indent: (
      amount: 1.25cm,
      all: true,
    ),
    leading: 1.5em,
    justify: true,
  )

  #set heading(numbering: "1.1.1.1")

  #show heading: set block(
    above: 24pt,
    below: 24pt,
  )

  #show heading.where(level: 1): set text(
    size: 16pt,
    weight: "bold",
  )

  #show heading.where(level: 2): set text(
    size: 14pt,
    weight: "bold",
  )

  #show heading.where(level: 3): set text(
    size: 14pt,
    weight: "bold",
  )

  #show heading.where(level: 4): set text(
    size: 14pt,
    weight: "regular",
  )

  #set list(
    marker: [-],
  )

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

  #set list(
    marker: [-],
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


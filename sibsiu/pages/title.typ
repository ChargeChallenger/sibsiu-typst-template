#import "parts.typ": institution-header, underlined-field

#let title-page(
  ministry: "Министерство науки и высшего образования Российской Федерации",
  institution-line-1: "Федеральное государственное бюджетное образовательное учреждение",
  institution-line-2: "высшего образования",
  university: "«Сибирский государственный индустриальный университет»",
  department: "Кафедра прикладных информационных технологий и программирования",
  work-type: "",
  discipline: "",
  topic: "",
  group-label: "Обучающийся группы",
  group: "",
  student: "",
  supervisor-label: "",
  supervisor: "",
  city: "",
  year: "",
) = [
  #set par(first-line-indent: 0pt, leading: 0.95em, justify: false)

  #institution-header(
    ministry,
    institution-line-1,
    institution-line-2,
    university,
    department,
  )

  #v(24pt)

  #align(center)[
    #text(weight: "bold")[#work-type]
  ]

  #v(16pt)

  #align(center)[по дисциплине «#discipline»]
  #align(center)[на тему «#topic»]

  #v(12pt)

  #align(right)[
    #block(width: 11.4cm)[
      Выполнил:

      #v(3pt)

      #grid(
        columns: (1fr, 4.8cm),
        column-gutter: 0.5cm,
        [#group-label],
        [#underlined-field(
          value: [#group],
          caption: [(аббревиатуры групп)],
          reserve: 0.01em,
        )],
      )

      #grid(
        columns: (3.0cm, 3.0cm, 4.8cm),
        column-gutter: 0.35cm,
        [#underlined-field(caption: [(дата)], reserve: 0.01em)],
        [#underlined-field(caption: [(подпись)], reserve: 0.01em)],
        [#underlined-field(
          value: [#student],
          caption: [(инициалы, фамилия)],
          reserve: 0.01em,
        )],
      )

      #supervisor-label

      #align(right)[
        #underlined-field(
          width: 8.3cm,
          value: [#supervisor],
          caption: [(уч. степень, звание инициалы и фамилия)],
          reserve: 0.01em,
        )
      ]

      #align(right)[
        #grid(
          columns: (2.7cm, 2.7cm, 4.6cm),
          column-gutter: 0.35cm,
          [#underlined-field(caption: [(оценка)])],
          [#underlined-field(caption: [(дата)])],
          [#underlined-field(caption: [(подпись)])],
        )
      ]
    ]
  ]

  #place(bottom + center, dy: -3mm)[
    #align(center)[
      #city

      #year
    ]
  ]
]

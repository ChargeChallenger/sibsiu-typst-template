#import "common.typ": institution_header, underlined_field

#let title_page(
  ministry: "Министерство науки и высшего образования Российской Федерации",
  institution_line_1: "Федеральное государственное бюджетное образовательное учреждение",
  institution_line_2: "высшего образования",
  university: "«Сибирский государственный индустриальный университет»",
  department: "Кафедра прикладных информационных технологий и программирования",
  work_type: "ОТЧЕТ ПО ПРАКТИЧЕСКИМ ЗАНЯТИЯМ",
  discipline: "",
  topic: "",
  group_label: "Обучающийся группы",
  group: "",
  student: "",
  supervisor_label: "Преподаватель:",
  supervisor: "",
  city: "",
  year: "",
) = [
  #set par(first-line-indent: 0pt, leading: 0.95em, justify: false)

  #institution_header(
    ministry,
    institution_line_1,
    institution_line_2,
    university,
    department,
  )

  #v(24pt)

  #align(center)[
    #text(weight: "bold")[#work_type]
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
        [#group_label],
        [#underlined_field(
          value: [#group],
          caption: [(аббревиатуры групп)],
          reserve: 0.01em,
        )],
      )

      #grid(
        columns: (3.0cm, 3.0cm, 4.8cm),
        column-gutter: 0.35cm,
        [#underlined_field(caption: [(дата)], reserve: 0.01em)],
        [#underlined_field(caption: [(подпись)], reserve: 0.01em)],
        [#underlined_field(
          value: [#student],
          caption: [(инициалы, фамилия)],
          reserve: 0.01em,
        )],
      )

      #supervisor_label

      #align(right)[
        #underlined_field(
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
          [#underlined_field(caption: [(оценка)])],
          [#underlined_field(caption: [(дата)])],
          [#underlined_field(caption: [(подпись)])],
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

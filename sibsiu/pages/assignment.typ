#import "parts.typ": institution-header, underlined-field, value-line

#let assignment-page(
  ministry: "Министерство науки и высшего образования Российской Федерации",
  institution-line-1: "Федеральное государственное бюджетное образовательное учреждение",
  institution-line-2: "высшего образования",
  university: "«Сибирский государственный индустриальный университет»",
  department: "Кафедра прикладных информационных технологий и программирования",
  approver-title: "УТВЕРЖДАЮ",
  approver-role: "Заведующий кафедрой",
  discipline: "",
  topic: "",
  group: "",
  student-full: "",
  tasks: [],
  accepted-student: "",
  supervisor-role: "",
  supervisor-short: "",
) = [
  #set page(
    margin: (
      top: 16mm,
      bottom: 10mm,
      left: 20mm,
      right: 10mm,
    ),
  )
  #set text(size: 12pt)
  #set par(first-line-indent: 0pt, leading: 1.05em, spacing: 0.85em, justify: false)

  #institution-header(
    ministry,
    institution-line-1,
    institution-line-2,
    university,
    department,
  )

  #v(24pt)

  #align(right)[
    #block(width: 8.2cm)[
      #approver-title

      #approver-role

      #v(2pt)

      #grid(
        columns: (3.0cm, 4.4cm),
        column-gutter: 0.45cm,
        [#underlined-field(caption: [(подпись)])], [#underlined-field(caption: [(инициалы, фамилия)])],
      )

      #v(2pt)

      #grid(
        columns: (1.5cm, 3.6cm, 2.2cm),
        column-gutter: 0.25cm,
        [#text("«____»")], [#value-line(reserve: -0.05em)], [#text("20__ г.")],
      )
    ]
  ]

  #v(34pt)

  #align(center)[
    #text(size: 14pt, weight: "bold")[ЗАДАНИЕ НА ВЫПОЛНЕНИЕ КУРСОВОГО ПРОЕКТА]
  ]

  #v(18pt)

  #align(center)[по дисциплине «#discipline»]
  #align(center)[на тему «#topic»]
  #align(center)[обучающегося группы #group]
  #align(center)[#student-full]

  #v(18pt)

  #tasks

  #v(24pt)

  Задание к курсовой работе принял:

  #v(8pt)

  #grid(
    columns: (1fr, 5.2cm),
    column-gutter: 0.9cm,
    [
      #grid(
        columns: (1.1cm, 4.1cm, 1.8cm),
        column-gutter: 0.25cm,
        [#text("«___»")], [#value-line(reserve: -0.05em)], [#text("_____г.")],
      )
    ],
    [#value-line(value: [#accepted-student], reserve: 0.9em)],
  )

  #v(32pt)

  #grid(
    columns: (1fr, 3.3cm, 5.2cm),
    column-gutter: 0.45cm,
    [#supervisor-role], [#value-line(reserve: 0.9em)], [#value-line(value: [#supervisor-short], reserve: 0.9em)],
  )
]

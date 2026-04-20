#import "common.typ": institution_header, underlined_field, value_line

#let assignment_page(
  ministry: "Министерство науки и высшего образования Российской Федерации",
  institution_line_1: "Федеральное государственное бюджетное образовательное учреждение",
  institution_line_2: "высшего образования",
  university: "«Сибирский государственный индустриальный университет»",
  department: "Кафедра прикладных информационных технологий и программирования",
  approver_title: "УТВЕРЖДАЮ",
  approver_role: "Заведующий кафедрой",
  discipline: "",
  topic: "",
  group: "",
  student_full: "",
  tasks: [],
  accepted_student: "",
  supervisor_role: "Руководитель курсового проекта",
  supervisor_short: "",
) = [
  #set page(
    margin: (
      top: 16mm,
      bottom: 10mm,
      left: 20mm,
      right: 10mm,
    ),
  )
  #set text(size: 12.5pt)
  #set par(first-line-indent: 0pt, leading: 0.85em, justify: false)

  #institution_header(
    ministry,
    institution_line_1,
    institution_line_2,
    university,
    department,
  )

  #v(2pt)

  #align(right)[
    #block(width: 8.2cm)[
      #approver_title

      #approver_role

      #v(2pt)

      #grid(
        columns: (3.0cm, 4.4cm),
        column-gutter: 0.45cm,
        [#underlined_field(caption: [(подпись)])], [#underlined_field(caption: [(инициалы, фамилия)])],
      )

      #v(2pt)

      #grid(
        columns: (1.5cm, 3.6cm, 2.2cm),
        column-gutter: 0.25cm,
        [#text("«____»")], [#value_line(reserve: -0.35em)], [#text("20__ г.")],
      )
    ]
  ]

  #v(10pt)

  #align(center)[
    #text(size: 14pt, weight: "bold")[ЗАДАНИЕ НА ВЫПОЛНЕНИЕ КУРСОВОГО ПРОЕКТА]
  ]

  #v(0pt)

  #align(center)[по дисциплине «#discipline»]
  #align(center)[на тему «#topic»]
  #align(center)[обучающегося группы #group]
  #align(center)[#student_full]

  #v(0pt)

  #tasks

  #v(2pt)

  Задание к курсовой работе принял:

  #v(0pt)

  #grid(
    columns: (1fr, 5.2cm),
    column-gutter: 0.9cm,
    [
      #grid(
        columns: (1.1cm, 4.1cm, 1.8cm),
        column-gutter: 0.25cm,
        [#text("«___»")], [#value_line(reserve: -0.35em)], [#text("_____г.")],
      )
    ],
    [#value_line(value: [#accepted_student], reserve: 0em)],
  )

  #v(0pt)

  #grid(
    columns: (1fr, 3.3cm, 5.2cm),
    column-gutter: 0.45cm,
    [#supervisor_role], [#value_line(reserve: 0em)], [#value_line(value: [#supervisor_short], reserve: 0em)],
  )
]

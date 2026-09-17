// Шаблон учебных работ СибГИУ — публичный интерфейс пакета.
//
// Работа подключает только этот файл:
//   #import "/sibsiu/lib.typ": work, document-figure
// Внутренности (style.typ, pages/) снаружи не используются.

#import "style.typ": gost-style
#import "kinds.typ": resolve-kind
#import "pages/title.typ": title-page
#import "pages/assignment.typ": assignment-page

// Пункт задания на курсовой проект: #task-item("4.1", [Настройка DNS], indent: 0.6cm)
#let task-item(number, body, indent: 0pt) = pad(left: indent)[
  #grid(
    columns: (auto, 1fr),
    column-gutter: 0.2cm,
    [#number], [#body],
  )
]

// Рисунок с подписью «Рисунок N – Название»:
//   #document-figure(
//     image("assets/01-scheme.png", width: 82%),
//     [Схема сети],
//   ) <fig-scheme>
//
// Картинка передаётся готовым элементом, а не путём: Typst разрешает пути
// относительно файла, где написан вызов image(), поэтому путь, переданный
// строкой, искался бы внутри пакета, а не в каталоге работы.
#let document-figure(body, caption, gap: 24pt) = figure(
  align(center)[#body],
  kind: image,
  gap: gap,
  caption: caption,
)

// Ненумерованный раздел: ВВЕДЕНИЕ, ЗАКЛЮЧЕНИЕ и подобные.
// Заголовок печатается по центру, а в оглавление попадает через скрытый
// heading — иначе Typst не видит раздела, которого нет в нумерации.
#let unnumbered-section(title, outlined: true) = [
  #{
    show heading: none
    heading(numbering: none, outlined: outlined)[#title]
  }
  #align(center)[
    #text(size: 16pt, weight: "bold")[#title]
  ]
  #v(24pt)
]

#let work(
  kind: "coursework",
  discipline: "",
  topic: "",
  group: "",
  // (short: "Н.А. Горбатых", full: "Горбатых Никиты Андреевича")
  student: (:),
  // (short: "П.А. Сеченов", full: "к.т.н., доцент П.А. Сеченов")
  supervisor: (:),
  city: "Новокузнецк",
  year: "",
  // Пункты задания; нужны только для курсового проекта.
  tasks: none,
  // Содержимое .bib-файла: bib: read("works.bib").
  // Передаётся именно содержимым — пакет не может прочитать файл работы
  // по относительному пути, он ищет его внутри себя.
  bib: none,
  // Библиографический список в оглавлении: по умолчанию выключен,
  // так оформлена проверенная преподавателем работа.
  outline-bibliography: false,
  university: "«Сибирский государственный индустриальный университет»",
  department: "Кафедра прикладных информационных технологий и программирования",
  doc,
) = [
  #let k = resolve-kind(kind)

  #show: gost-style

  #title-page(
    university: university,
    department: department,
    work-type: k.work-type,
    discipline: discipline,
    topic: topic,
    group: group,
    student: student.at("short", default: ""),
    supervisor-label: k.supervisor-label,
    supervisor: supervisor.at("full", default: ""),
    city: city,
    year: year,
  )
  #pagebreak()

  #if k.assignment and tasks != none [
    #assignment-page(
      university: university,
      department: department,
      discipline: discipline,
      topic: topic,
      group: group,
      student-full: student.at("full", default: ""),
      tasks: tasks,
      accepted-student: student.at("short", default: ""),
      supervisor-role: k.supervisor-role,
      supervisor-short: supervisor.at("short", default: ""),
    )
    #pagebreak()
  ]

  // Нумерация начинается после титула и задания, но счётчик страниц
  // их учитывает — первый проставленный номер будет 2 или 3.
  #set page(numbering: "1", number-align: center + bottom)

  #unnumbered-section("СОДЕРЖАНИЕ", outlined: false)
  #outline(title: none)
  #pagebreak()

  #doc

  #if bib != none [
    #pagebreak()
    #unnumbered-section("БИБЛИОГРАФИЧЕСКИЙ СПИСОК", outlined: outline-bibliography)
    #show bibliography: it => [
      #set par(leading: 1.5em, spacing: 1.5em, justify: true)
      #it
    ]
    #bibliography(
      bytes(bib),
      title: none,
      style: "gost-r-7-0-5-2008-numeric-indent.csl",
    )
  ]
]

// Оформление текстовых документов СибГИУ.
//
// Основа — ГОСТ 7.32-2017 (отчёты о НИР) и ГОСТ 2.105-2019 (ЕСКД).
// Значения ниже подтверждены правками преподавателя, см. тег verified/2026-04-29
// (коммит 2e52ab5). Меняя их, сверяйся с эталоном: оформление проверялось
// вживую, документа с требованиями на руках нет.

// Буквы для перечислений по ГОСТ 2.105-2019.
// Исключены ё, з, й, о, ч, ъ, ы, ь — их легко спутать с цифрами
// и другими буквами, поэтому стандарт их не допускает.
#let ru-letters = (
  "а", "б", "в", "г", "д", "е", "ж", "и", "к", "л",
  "м", "н", "п", "р", "с", "т", "у", "ф", "х", "ц",
  "ш", "щ", "э", "ю", "я",
)

#let gost-style(doc) = [
  #set page(
    paper: "a4",
    // Поля по ГОСТ 7.32-2017: слева 20 мм под подшивку, справа 10 мм.
    margin: (top: 20mm, bottom: 20mm, left: 20mm, right: 10mm),
  )

  #set text(
    font: "Times New Roman",
    size: 14pt,
    lang: "ru",
  )

  #set par(
    first-line-indent: (amount: 1.25cm, all: true),
    // Полуторный межстрочный интервал.
    // Typst меряет leading как промежуток МЕЖДУ строками, а Word —
    // от кегля, поэтому «полтора» по Word соответствует 1em здесь, а не 1.5em.
    // Выяснялось дважды (коммит 15421c5), не меняй не проверив на бумаге.
    leading: 1em,
    // spacing: 1em — намеренно отключено: даёт лишний зазор между абзацами.
    justify: true,
  )

  #set heading(numbering: "1.1.1.1")

  // Номер раздела набирается вручную, чтобы отделить его от заголовка
  // фиксированным пробелом, а не переносом строки.
  #let heading-content(it) = [
    #set par(
      first-line-indent: (amount: 1.25cm, all: true),
      leading: 1em,
    )
    #if it.numbering != none [
      #counter(heading).display(it.numbering)
      #h(0.25em)
    ]
    #it.body
  ]

  // Заголовки без отступа слева: вариант с block(inset: 1.25cm)
  // преподавателем забракован.
  #show heading.where(level: 1): it => [
    #block[
      #set text(size: 16pt, weight: "bold")
      #heading-content(it)
    ]
    #v(24pt)
  ]

  #show heading.where(level: 2): it => [
    #v(24pt, weak: true)
    #block[
      #set text(size: 14pt, weight: "bold")
      #heading-content(it)
    ]
    #v(24pt, weak: true)
  ]

  #show heading.where(level: 3): it => [
    #v(24pt, weak: true)
    #block[
      #set text(size: 14pt, weight: "bold")
      #heading-content(it)
    ]
    #v(24pt, weak: true)
  ]

  // Четвёртый уровень — без полужирного начертания.
  #show heading.where(level: 4): it => [
    #v(24pt, weak: true)
    #block[
      #set text(size: 14pt, weight: "regular")
      #heading-content(it)
    ]
    #v(24pt, weak: true)
  ]

  // Подпись вида «Рисунок 1 – Название».
  #show figure.where(kind: image): set figure(supplement: [Рисунок])
  #show figure.where(kind: image): set figure.caption(separator: [ – ])

  #show figure.where(kind: image): it => [
    #v(12pt)
    #it
    #v(12pt)
  ]

  // Перечисления оформляются абзацами с тире, а не висячим отступом:
  // штатный list даёт выступ, которого в требованиях нет.
  // ВНИМАНИЕ: вложенные списки эта реализация не поддерживает.
  #show list: it => [
    #for item in it.children [
      #set par(
        first-line-indent: (amount: 1.25cm, all: true),
        leading: 1em,
        spacing: 1em,
        justify: true,
      )
      – #item.body
    ]
  ]

  // Нумерованные перечисления: а) б) в) на первом уровне, 1) 2) на вложенных.
  #set enum(
    numbering: (..n) => {
      let nums = n.pos()
      if nums.len() == 0 {
        ""
      } else {
        let last = nums.last()
        if nums.len() == 1 {
          ru-letters.at(last - 1, default: str(last)) + ")"
        } else {
          str(last) + ")"
        }
      }
    },
    full: true,
  )

  #doc
]

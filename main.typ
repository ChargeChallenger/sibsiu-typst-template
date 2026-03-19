// ПАКЕТЫ

// НАСТРОЙКИ

#import "style.typ": template
#show: template

// ДОКУМЕНТ

#align(center)[
  ТИТУЛЬНЫЙ ЛИСТ
]

#pagebreak()

#align(center)[
  ЗАДАНИЕ
]

#pagebreak()

#align(center)[
  ЗАДАНИЕ страница вторая
]

#pagebreak()
#set page(numbering: "1", number-align: center + bottom);

#align(center)[
  #text(size: 16pt, weight: "bold")[СОДЕРЖАНИЕ]
]
#v(24pt)

#outline(
  title: none,
)
#pagebreak()

= ВВЕДЕНИЕ

Текст

== Введение

Текст

=== Введение

Текст

==== Введение

Текст введения Текст введения Текст введения Текст введения Текст введения Текст введения Текст введения Текст введения Текст введения Текст введения

+ Пункт
  + Подпук
  + Подпук 2
    + Подподпук
+ Второй
+ Третий

- Пункт
- Второй
- Третий

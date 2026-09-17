#import "@local/sibsiu:0.1.0": document-figure

#pagebreak()

= Первый раздел

Текст раздела. Ссылка на источник ставится так #cite(<пример-источника>).

== Подраздел

Ссылка на рисунок: на @fig-example[рисунке] показан пример.

#document-figure(
  image("../assets/example.png", width: 82%),
  [Название рисунка],
) <fig-example>

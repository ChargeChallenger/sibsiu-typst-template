#import "@local/sibsiu:0.1.0": work, task-item

#show: work.with(
  // "coursework" — курсовой проект (со страницей задания),
  // "practice"   — отчёт по практическим занятиям,
  // "rgr"        — расчётно-графическая работа.
  kind: "coursework",
  discipline: "Название дисциплины",
  topic: "Тема работы",
  group: "ИВТ-22",
  student: (
    short: "И.О. Фамилия",
    full: "Фамилия Имени Отчества",
  ),
  supervisor: (
    short: "И.О. Фамилия",
    full: "уч. степень, звание И.О. Фамилия",
  ),
  year: "2026 г.",
  // Убери строку, если ссылок на источники в работе нет.
  bib: read("works.bib"),
  // Нужно только для kind: "coursework".
  tasks: [
    #task-item("1.", [Первый пункт задания])
    #task-item("2.", [Второй пункт задания])
    #task-item("2.1", [Подпункт задания], indent: 0.6cm)
  ],
)

#include "content/10-introduction.typ"
#include "content/11-main.typ"
#include "content/19-conclusion.typ"

#import "/sibsiu/lib.typ": work, task-item

#show: work.with(
  kind: "coursework",
  discipline: "Администрирование систем",
  topic: "Администрирование систем на основе: Windows Server 2025, Microsoft Windows 8, ElementaryOS",
  group: "ИВТ-22",
  student: (
    short: "Н.А. Горбатых",
    full: "Горбатых Никиты Андреевича",
  ),
  supervisor: (
    short: "П.А. Сеченов",
    full: "к.т.н., доцент П.А. Сеченов",
  ),
  year: "2026 г.",
  bib: read("works.bib"),
  tasks: [
    #task-item("1.", [Постановка задачи])
    #task-item("2.", [Установка виртуальных машин])
    #task-item("3.", [Настройка виртуальных машин])
    #task-item("4.", [Администрирование и настройка сервера и клиентских машин])
    #task-item("4.1", [Предварительная настройки сервера], indent: 0.6cm)
    #task-item("4.2", [Установка ролей сервера], indent: 0.6cm)
    #task-item("4.3", [Настройка службы доступа к каталогам Active Directory], indent: 0.6cm)
    #task-item("4.4", [Настройка доменной службы имен DNS], indent: 0.6cm)
    #task-item("4.5", [Настройка протокола динамической настройки узла DHCP], indent: 0.6cm)
    #task-item("5.", [Установка дополнительного клиент-серверного программного обеспечения и проверка его работы])
  ],
)

#include "content/10-introduction.typ"
#include "content/11-analysis.typ"
#include "content/12-setting-up.typ"
#include "content/13-clonezilla.typ"
#include "content/19-conclusion.typ"

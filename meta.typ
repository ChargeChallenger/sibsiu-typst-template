#import "templates/common.typ": task_item

#let discipline = "Администрирование систем"
#let topic = "Администрирование систем на основе: Windows Server 2025, Microsoft Windows 8, ElementaryOS"
#let group = "ИВТ-22"

#let assignment_tasks = [
  #task_item("1.", [Постановка задачи])
  #task_item("2.", [Установка виртуальных машин])
  #task_item("3.", [Настройка виртуальных машин])
  #task_item("4.", [Администрирование и настройка сервера и клиентских машин])
  #task_item("4.1", [Предварительная настройки сервера], indent: 0.6cm)
  #task_item("4.2", [Установка ролей сервера], indent: 0.6cm)
  #task_item("4.3", [Настройка службы доступа к каталогам Active Directory], indent: 0.6cm)
  #task_item("4.4", [Настройка доменной службы  имен DNS], indent: 0.6cm)
  #task_item("4.5", [Настройка протокола динамической настройки узла DHCP], indent: 0.6cm)
  #task_item("5.", [Установка дополнительного клиент-серверного программного обеспечения и проверка его работы])
]

#let title_meta = (
  discipline: discipline,
  topic: topic,
  group: group,
  student: "Н.А. Горбатых",
  supervisor: "к.т.н., доцент П.А. Сеченов",
  city: "Новокузнецк",
  year: "2026 г.",
)

#let assignment_meta = (
  discipline: discipline,
  topic: topic,
  group: group,
  student_full: "Горбатых Никиты Андреевича",
  tasks: assignment_tasks,
  accepted_student: "Н.А. Горбатых",
  supervisor_short: "П.А. Сеченов",
)

#import "../templates/common.typ": document_figure

#heading(level: 1, outlined: false)[Пример оформления рисунка]

Ниже приведен пример вставки изображения, оформленный по образцу из `example.docx`.
В исходном документе ссылка на рисунок ставится в основном тексте, затем размещается
само изображение, а подпись выносится под ним по центру.

Пример оформления показан на @fig_rename_server[рисунке].

#document_figure(
  "../assets/example-figure.png",
  [Изменение имени компьютера на сервере],
  width: 82%,
) <fig_rename_server>

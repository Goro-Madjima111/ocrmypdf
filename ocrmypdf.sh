#!/bin/bash
# Проверка наличия входного файла
if [[ ! -f "input.pdf" ]]; then
  echo "Ошибка: Файл input.pdf не найден!"
  exit 1
fi

# Выполнение OCR
ocrmypdf -l rus input.pdf output.pdf

# Проверка завершения
if [[ $? -eq 0 ]]; then
  echo "OCR выполнено успешно. Результат сохранён в output.pdf"
else
  echo "Ошибка при выполнении OCR"
  exit 1
fi

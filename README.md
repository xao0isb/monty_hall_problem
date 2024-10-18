# [Парадокс Монти Холла](https://ru.wikipedia.org/wiki/%D0%9F%D0%B0%D1%80%D0%B0%D0%B4%D0%BE%D0%BA%D1%81_%D0%9C%D0%BE%D0%BD%D1%82%D0%B8_%D0%A5%D0%BE%D0%BB%D0%BB%D0%B0) в виде кода :)

Решил изобразить парадокс Монти Холла через игру с дверьми.

## Об архитектуре

Сделал легко расширяемым возможность добавления новых действий:
 - [регистрация действий](https://github.com/xao0isb/monty_hall_problem/blob/751884ca0e603e91b3c6e70d60c750a00c119b93/lib/monty_hall_problem/game.rb#L36-L43)
 - [сами действия](https://github.com/xao0isb/monty_hall_problem/tree/main/lib/monty_hall_problem/game/actions)

Учел, что нужно валидировать вводимые данные пользователем. Для это сделал свой STDIN клиент и добавил для него валидоры, а также сделал их легко расширяемыми:
 - [STDIN клиент](https://github.com/xao0isb/monty_hall_problem/tree/main/lib/monty_hall_problem/game/helpers/stdin_client.rb)
 - [валидаторы](https://github.com/xao0isb/monty_hall_problem/tree/main/lib/monty_hall_problem/game/helpers/stdin_client/input_validators)

Не было условия, что понятия "дверь", "автомобиль" и "коза" могут измениться, но в идеале нужно добавить абстракцию от этого.

## Локальный запуск

Установка зависимостей:

```bash
bundle
```

Запуск консоли:

```bash
bin/console
```

Запуск игры:

```ruby
MontyHallProblem::Game.start
```

## Разработка

Установка зависимостей:

```bash
bundle
```

Тесты:

```bash
bundle exec rspec
```

Линтинг:

```bash
bundle exec rubocop
```

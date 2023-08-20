# s21_grep

Grep is a command-line utility for searching plain-text data sets for lines that match a regular expression.

## Subject

- [Subject EN](./docs/subject_en.md)
- [Subject RU](./docs/subject_ru.md)

## Usage

- `$>./s21_cat [-hnlcovsief] pattern... [filenames...]`

- A program without filename arguments or with the "-" argument works with standard input.

## Tests

- `make test`

- The program is designed according to the behavior of the gnu coreutils program. Therefore, tests in comparison with other implementations may be with errors. To do this, the tests have scripts for testing via docker. For this `$>sh ./tests/run.sh`



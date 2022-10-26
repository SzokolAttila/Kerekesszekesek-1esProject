class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({required this.id, required this.question, required this.answer, required this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question": "Hány főbb részre osztható az Emberi Jogok Nyilatkozata?",
    "options": ['7.Cikk', '8.Cikk', '9.Cikk', '10.Cikk'],
    "answer_index": 0,
  },
  {
    "id": 2,
    "question": "Miről szól a 3.Cikk?",
    "options": ['megfelelő életszínvonal', 'rabszolgaság és kínzás tiltása', 'tulajdonhoz való jog', 'békés társulás'],
    "answer_index": 1,
  },
  {
    "id": 3,
    "question": "Az applikációnk hány emberjogi cikkejt dolgoz fel?",
    "options": ['7', '9', '10', '13'],
    "answer_index": 1,
  },
  {
    "id": 4,
    "question": "Ki írta össze először?",
    "options": ['Jonn Peter', 'Andrew Tate', 'John Peters Humphrey', 'Peters Humphrey'],
    "answer_index": 2,
  },
  {
    "id": 5,
    "question": "Miről híres még ez az nyilatkozat?",
    "options": ['Legtöbb oldalas nyilatkozat', 'Legrégebbi nyilatkozat', 'Legtöbb ember álltal összeírt dokumentum', 'A világ legtöbb nyelvre lefordított dokumentum'],
    "answer_index": 3,
  },
  {
    "id": 6,
    "question": "Mikor fogadták el a nyilatkozatot?",
    "options": ['1948. december 10.', '1949. december 11.', '1950. december 10.', '1948. január 1.'],
    "answer_index": 0,
  },
  {
    "id": 7,
    "question": "Melyik nap van az Emberi jogok világnapja?",
    "options": ['december 9.', 'december 11.', 'január 1.', 'december 10.'],
    "answer_index": 3,
  },
  {
    "id": 8,
    "question": "Kik a Kerekesszékesek csapat tagjai?",
    "options": ['Adrián, Márk, Attila', 'Attila, Dávid, András', 'Dávid, Adrián, Attila', 'Ezek közül egyek sem'],
    "answer_index": 2,
  },


];

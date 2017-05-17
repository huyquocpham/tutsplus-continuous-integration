publishers = ['Orion', "O'Reilly Media", 'Random House', 'HarperCollins', 'Bloomsbury']
publishers.each do |publisher|
  Publisher.where(name: publisher).first_or_create
end

authors = [
  { first_name: "Alice", last_name: "Walker"},
  { first_name: "Allen", last_name: "Ginsberg"},
  { first_name: "Anne", last_name: "Rice"},
  { first_name: "Arthur", last_name: "Miller"},
  { first_name: "Beverly", last_name: "Cleary"},
  { first_name: "Bill", last_name: "Bryson"},
  { first_name: "Cassandra", last_name: "Clare"},
  { first_name: "Christopher", last_name: "Paolini"},
  { first_name: "Chuck", last_name: "Palahniuk"},
  { first_name: "Clive", last_name: "Cussler"},
  { first_name: "Cormac", last_name: "McCarthy"},
  { first_name: "Dale", last_name: "Carnegie"},
  { first_name: "Dan", last_name: "Brown"},
  { first_name: "Daniel", last_name: "Handler"},
  { first_name: "Danielle", last_name: "Steel"},
  { first_name: "Dashiell", last_name: "Hammett"},
  { first_name: "Dav", last_name: "Pilkey"},
  { first_name: "Dave", last_name: "Pelzer"},
  { first_name: "David", last_name: "Baldacci"},
  { first_name: "David", last_name: "Eddings"},
  { first_name: "Dean", last_name: "Koontz"},
  { first_name: "Debbie", last_name: "Macomber"},
  { first_name: "Don", last_name: "DeLillo"},
  { first_name: "Edith", last_name: "Wharton"},
  { first_name: "Elbert", last_name: "Hubbard"},
  { first_name: "Elie", last_name: "Wiesel"},
  { first_name: "Ellen", last_name: "Hopkins"},
  { first_name: "Emily", last_name: "Dickinson"},
  { first_name: "Eric", last_name: "Carle"},
  { first_name: "Erica", last_name: "Jong"},
  { first_name: "Ernest", last_name: "Hemingway"},
  { first_name: "Flannery", last_name: "O’Connor"},
  { first_name: "Frank", last_name: "Miller"},
  { first_name: "Frederick", last_name: "Douglass"},
  { first_name: "Gary", last_name: "Paulsen"},
  { first_name: "Gertrude", last_name: "Stein"},
  { first_name: "Glenn", last_name: "Beck"},
  { first_name: "Graham", last_name: "Greene"},
  { first_name: "Harlan", last_name: "Coben"},
  { first_name: "Harlan", last_name: "Ellison"},
  { first_name: "Harper", last_name: "Lee"},
  { first_name: "Henry", last_name: "Miller"},
  { first_name: "Herman", last_name: "Melville"},
  { first_name: "Horatio", last_name: "Alger"},
  { first_name: "Isaac", last_name: "Asimov"},
  { first_name: "Jack", last_name: "Canfield"},
  { first_name: "Jack", last_name: "Kerouac"},
  { first_name: "Jack", last_name: "London"},
  { first_name: "James", last_name: "Baldwin"},
  { first_name: "James", last_name: "Frey"},
  { first_name: "James", last_name: "Michener"},
  { first_name: "James", last_name: "Patterson"},
  { first_name: "Jared", last_name: "Diamond"},
  { first_name: "Jeff", last_name: "Kinney"},
  { first_name: "Jeffery", last_name: "Deaver"},
  { first_name: "Jim", last_name: "Butcher"},
  { first_name: "Joan", last_name: "Didion"},
  { first_name: "John", last_name: "Cheever"},
  { first_name: "John", last_name: "Fante"},
  { first_name: "John", last_name: "Gray"},
  { first_name: "John", last_name: "Green"},
  { first_name: "John", last_name: "Grisham"},
  { first_name: "John", last_name: "Irving"},
  { first_name: "John", last_name: "Steinbeck"},
  { first_name: "John", last_name: "Updike"},
  { first_name: "Jonathan", last_name: "Franzen"},
  { first_name: "Joseph", last_name: "Heller"},
  { first_name: "Jude", last_name: "Deveraux"},
  { first_name: "Judy", last_name: "Blume"},
  { first_name: "Julie", last_name: "Garwood"},
  { first_name: "Kate", last_name: "Chopin"},
  { first_name: "Kathryn", last_name: "Stockett"},
  { first_name: "Khaled", last_name: "Hosseini"},
  { first_name: "Kurt", last_name: "Vonnegut"},
  { first_name: "Lori", last_name: "Foster"},
  { first_name: "Louise", last_name: "Hay"},
  { first_name: "Maeve", last_name: "Binchy"},
  { first_name: "Margaret", last_name: "Mitchell"},
  { first_name: "Mario", last_name: "Puzo"},
  { first_name: "Mark", last_name: "Twain"},
  { first_name: "Maurice", last_name: "Sendak"},
  { first_name: "Maya", last_name: "Angelou"},
  { first_name: "Meg", last_name: "Cabot"},
  { first_name: "Michael", last_name: "Chabon"},
  { first_name: "Michael", last_name: "Connelly"},
  { first_name: "Michael", last_name: "Crichton"},
  { first_name: "Michael", last_name: "Grant"},
  { first_name: "Mitch", last_name: "Albom"},
  { first_name: "Napoleon", last_name: "Hill"},
  { first_name: "Nathaniel", last_name: "Hawthorne"},
  { first_name: "Ned", last_name: "Vizzini"},
  { first_name: "Nicholas", last_name: "Sparks"},
  { first_name: "Nicole", last_name: "Krauss"},
  { first_name: "Nora", last_name: "Roberts"},
  { first_name: "Norman", last_name: "Mailer"},
  { first_name: "Patricia", last_name: "Cornwell"},
  { first_name: "Paul", last_name: "Auster"},
  { first_name: "Philip", last_name: "Roth"},
  { first_name: "Ralph", last_name: "Ellison"},
  { first_name: "Raymond", last_name: "Carver"},
  { first_name: "Raymond", last_name: "Chandler"},
  { first_name: "Richard", last_name: "Bach"},
  { first_name: "Richard", last_name: "Scarry"},
  { first_name: "Rick", last_name: "Riordan"},
  { first_name: "Rick", last_name: "Warren"},
  { first_name: "Robert", last_name: "Crais"},
  { first_name: "Robert", last_name: "Jordan"},
  { first_name: "Robert", last_name: "Ludlum"},
  { first_name: "Robin", last_name: "Cook"},
  { first_name: "Robyn", last_name: "Carr"},
  { first_name: "Sam", last_name: "Harris"},
  { first_name: "Sandra", last_name: "Brown"},
  { first_name: "Sandra", last_name: "Cisneros"},
  { first_name: "Sarah", last_name: "Dessen"},
  { first_name: "Saul", last_name: "Bellow"},
  { first_name: "Shirley", last_name: "Jackson"},
  { first_name: "Sidney", last_name: "Sheldon"},
  { first_name: "Stephen", last_name: "Crane"},
  { first_name: "Stephen", last_name: "King"},
  { first_name: "Stephenie", last_name: "Meyer"},
  { first_name: "Sue", last_name: "Grafton"},
  { first_name: "Suzanne", last_name: "Collins"},
  { first_name: "Sylvia", last_name: "Plath"},
  { first_name: "Tennessee", last_name: "Williams"},
  { first_name: "Terry", last_name: "Brooks"},
  { first_name: "Terry", last_name: "Goodkind"},
  { first_name: "Thomas", last_name: "Harris"},
  { first_name: "Thomas", last_name: "Pynchon"},
  { first_name: "Tim", last_name: "O'Brien"},
  { first_name: "Tom", last_name: "Clancy"},
  { first_name: "Tom", last_name: "Robbins"},
  { first_name: "Toni", last_name: "Morrison"},
  { first_name: "Truman", last_name: "Capote"},
  { first_name: "Walt", last_name: "Whitman"},
  { first_name: "Willa", last_name: "Cather"},
  { first_name: "William", last_name: "Faulkner"},
  { first_name: "Zane", last_name: "Grey" }
]

authors.each do |author|
  Author.where(author).first_or_create
end

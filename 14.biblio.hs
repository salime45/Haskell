module Biblio where

type Person = String
type Book = String
type Database = [(Person,Book)]

exampleBase :: Database
obtain :: Database -> Person -> [Book]
borrow :: Database -> Book -> Person -> Database
return' :: Database -> (Person,Book) -> Database

exampleBase = [("Alicia","El nombre de la rosa"),
			   ("Juan", "La hija del canibal"),
			   ("Pepe","Odesa"),
			   ("Alicia","La ciudad de las bestias")]
			   
obtain dBase thisPerson = [book | (person,book) <- dBase, person == thisPerson]

borrow dBase thisBook thisPerson = dBase ++ [(thisPerson,thisBook)]

return' dBase (thisPerson,thisBook) = [(person,book) | (person,book) <- dBase , (person /= thisPerson) || (book /= thisBook)]


# Data Access Objects #

Data Access Objects are beans for your data facade. You pass in the datasource, username, and password (or whatever else you need), and you have an object that allows for your **CRUD** methods. I suppose it's useful to have that division of data from the rest of your object. In that way, if you change data implementations, you just need to implement a new DAO with the same API.

I disagree with the book's style a little bit.

* `Book.cfc` is your book bean.
* `BookData.cfc` is your book's data bean.
** `createBook( book = bookObj )` - after creation, set bookObj.BookId equal to result of `createBook()`
** `readBook( bookId = bookId )` - returns book object
** `updateBook( book = bookObj )` - ensure that bookObj has a BookId, returns success boolean
** `deleteBook( bookId = bookId )` - returns success boolean

Could also have `saveBook( book = bookObj )` method to combine create and read. It would check that the book exists first; if it does, create, if it doesn't, update. I think this could also be accomplished by checking that the BookId has a value.

Suggested that you can be DAO and a datasource object into Application scope.
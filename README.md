# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
3.4.2

* Rails version
8.0.2

* Commands
 to create new application

 ```bash
   rails new nile --api
```

To see routes

```bash
bin/rails routes
bin/rails routes | grep book
```
To see server

```bash
bin/rails s
```

to generate controller
```bash
bin/rails g controller BooksController index
```

To check code in verbose mode

```bash
curl http://localhost:3000/books -v
```

Run scaffolding model
```bash
rails g model Book title:string author:string
```

run migration
```bash
bin/rails db:migrate
```

rails console

```bash
bin/rails c

#inside console
Book.create!(author: 'tom', title: 'Rails API')
exit
```

get the route list for only book

```bash
bin/rails routes | grep book
curl --request POST http://localhost:3000/books

curl --header "Content-Type: application/json" --request POST --data '{"author": "James", "title": "a book"}' http://localhost:3000/books -v
```


## Status Code

Check here http://www.railsstatuscodes.com/

created: 201
ok : 200
unprocessable_entity: 422

## Active Record Validations

https://guides.rubyonrails.org/active_record_validations.html

```bash
curl --header "Content-Type: application/json" --request POST --data '{"author": "JK", "title": "HP"}' http://localhost:3000/books -v

curl --header "Content-Type: application/json" --request POST --data '{"author": "JK", "title": "Harry Potter 1"}' http://localhost:3000/books -v

curl --header "Content-Type: application/json" --request POST --data '{"author": "JK Rowling", "title": "Harry Potter 1"}' http://localhost:3000/books -v

curl --header "Content-Type: application/json"  http://localhost:3000/books/1 -v
```

Destroy

```bash
curl --header "Content-Type: application/json" --request DELETE http://localhost:3000/books/3 -v
```

Rescue operation
https://apidock.com/rails/ActionController/Rescue/ClassMethods/rescue_from


example for api
https://docs.stripe.com/api/authentication


Namespacing and versioning

```bash
curl http://localhost:3000/api/v1/books -v
```

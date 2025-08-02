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

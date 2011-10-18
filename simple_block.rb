require 'curb'
require 'json'
hash='
{
  "after": "a72da3cc2b6b481a70c6f1651f72273686b16515", 
  "before": "5c208e590d34b301cd1b2c73507bb43598b6b20b", 
  "commits": [
    {
      "added": [], 
      "author": {
        "email": "user@mail.com", 
        "name": "Username", 
        "username": "username"
      }, 
      "distinct": true, 
      "id": "a72da3cc2b6b681af0c6f1651f72273686b16515", 
      "message": "Some refactor", 
      "modified": [
        "app\/assets\/javascripts\/shop_cart.js.coffee", 
        "app\/assets\/stylesheets\/user_interface\/base.css.scss", 
        "app\/controllers\/main_users_controller.rb", 
        "app\/controllers\/orders_controller.rb", 
        "app\/controllers\/searches_controller.rb", 
        "app\/controllers\/shop_carts_controller.rb", 
        "app\/views\/shop_carts\/show.html.haml", 
        "dump.rdb", 
        "lib\/cart_methods.rb"
      ], 
      "removed": [], 
      "timestamp": "2011-10-06T05:09:34-07:00", 
      "url": "https:\/\/github.com\/username\/autoshop\/commit\/a72da3cc2b6b681adec6f1651f72273686b16515"
    }
  ], 
  "compare": "https:\/\/github.com\/username\/autoshop\/compare\/5c208e5...a72da3c", 
  "created": false, 
  "deleted": false, 
  "forced": false, 
  "pusher": {
    "email": "user@mail.com", 
    "name": "username"
  }, 
  "ref": "refs\/heads\/Task_47", 
  "ref_name": "master", 
  "repository": {
    "created_at": "2011\/06\/27 07:25:12 -0700", 
    "description": "site: ", 
    "fork": false, 
    "forks": 3, 
    "has_downloads": true, 
    "has_issues": false, 
    "has_wiki": false, 
    "homepage": "http:\/\/some page.ru", 
    "language": "JavaScript", 
    "name": "autoshop", 
    "open_issues": 6, 
    "owner": {
      "email": "user@mail.com", 
      "name": "hiddenfile"
    }, 
    "private": false, 
    "pushed_at": "2011\/10\/06 05:10:00 -0700", 
    "size": 468, 
    "url": "https:\/\/github.com\/username\/autoshop", 
    "watchers": 4
  }
}'

Curl::Easy.http_post("http://192.168.137.89:4000/?secret=trololo", "payload=#{hash}")




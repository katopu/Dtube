# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

# Dtube DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|username|string|null: false|
### Association
- has_many :posts
- has_many :comments

## comentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|user_id|integer|null: false, foreign_key: true|
|post_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :post

## postsテーブル
|Column|Type|Options|
|------|----|-------|
|title|text|null: false|
|text|text|null: false|
|image|string|null: false|
|good-btn|icon||
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
has_many :coments
has_many  :tags, through: :tag_posts
has_many :tag_posts

## tagsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null :false|
### Association
has_many :tag_posts
has_many  :posts, through: :tag_posts

## tag_postsテーブル
|Column|Type|Options|
|------|----|-------|
|post_id|integer|null :false, foreign_key: true|
|tag_id|integer|null :false, foreign_key: true|
### Association
belongs_to :post
belongs_to :tag


* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# アプリケーション名
## share-homework

# アプリケーション概要
## リストの作成・削除・編集、タスク（リストに紐付けられている）の作成・削除・編集、タスク内容はタスク名、説明文が記載でき、画像投稿できる。

# URL
## https://share-homework.herokuapp.com/

# テスト用アカウント
## Basic認証 ユーザー名: admin パスワード: 3333
## アカウント メールアドレス:hoge@gmail.com パスワード：hogehoge123

# 利用方法
## Basic認証をパスした後、サインアップページにてユーザー名、メールアドレス、パスワードを設定する。
## ログイン画面にて登録したメールアドレスとパスワードを記入後、ログインするとトップページに遷移できる。

# 目指した課題解決
## 共働き夫婦の家事分担の平等化

# 実装した機能
## リスト投稿機能 (topページ, task一覧ページ)
### リスト内容を入力して送信ボタンを押したらリストを投稿できる。
<a href="https://gyazo.com/2315a4cb3e9833c0a2eb572881bb6599"><img src="https://i.gyazo.com/2315a4cb3e9833c0a2eb572881bb6599.gif" alt="Image from Gyazo" width="1000"/></a>

## リスト一覧表示機能 (topページ, task一覧ページ)
### 過去に投稿したリストを一覧表示できる。
## リスト削除機能 (topページ)	
### 「削除」ボタンを押すことで、投稿したリストを削除できるようにする。
## リスト編集機能 (list 編集ページ)
### 「編集」ボタンを押すことで、任意のリストを編集ページに遷移できる。
## リスト選択機能(topページ)
### リストに紐付けられたタスク一覧と「タスク作成」で新規タスク作成ページに遷移できる。
## タスク投稿機能 (新規タスク作成ページ)	
### タスク一覧ページの「タスク作成」ボタンを押すことで、タスク作成ページに遷移しタスク内容を作成できる。フォーム入力後に送信ボタンを押すことで、タスク内容(タスク名、説明文、画像)が投稿できる。
## タスク一覧表示機能(task一覧ページ)
### 過去に投稿したタスクを一覧表示できる。
## タスク詳細機能
### 「詳細」ボタンを押すとタスク詳細ページに遷移し、入力内容が確認できる。
## タスク編集機能	
### タスク詳細ページで「編集」ボタンを押すとタスク編集ページに遷移し、フォームに入力できる。「更新」ボタンを押すことで、タスク内容を更新できる。ページ遷移先はタスク詳細ページ。
## タスク削除機能
### タスク詳細ページで「削除」ボタンを押すとタスクを削除できる。ページ遷移先はタスク一覧ページ。
## 画像のプレビュー機能
### 「ファイルを選択」ボタンを押して画像ファイルを選択すると、プレビューさせる。
## ユーザー管理機能（ログイン機能）
### ログインページで、登録したメールアドレスとパスワードを入力し、「ログイン」ボタンを押すことで、アプリのトップページへ遷移できる。
## ユーザー管理機能（サインアップ機能）
### アカウント作成ページにて、必要項目を入力し「アカウント作成」ボタンを押すことで、ログインページに遷移できる。

## タスク投稿機能

# テーブル設計

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| email    | string | null: false |
| password | string | null: false |

### Association

- has_many :groups
- has_many :tasks

## groups テーブル

| Column | Type      | Options                         |
| ------ | --------- | ------------------------------- |
| content| string    | null: false                     |
| user   | reference | null: false, foreign_key: true |

### Association

- has_many :tasks
- belongs_to :user

## tasks テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| content     | string     | null: false                    |
| description | text       | null: false                    |
| user        | references | null: false, foreign_key: true |
| group       | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :group
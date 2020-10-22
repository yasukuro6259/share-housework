# README

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
#### リスト内容を入力して送信ボタンを押したらリストを投稿できる。
<a href="https://gyazo.com/2315a4cb3e9833c0a2eb572881bb6599"><img src="https://i.gyazo.com/2315a4cb3e9833c0a2eb572881bb6599.gif" alt="Image from Gyazo" width="1000"/></a>

## リスト一覧表示機能 (topページ, task一覧ページ)
#### 過去に投稿したリストを一覧表示できる。
<a href="https://gyazo.com/542d155a0b137de0fa42cf291dbdb746"><img src="https://i.gyazo.com/542d155a0b137de0fa42cf291dbdb746.gif" alt="Image from Gyazo" width="1000"/></a>

## リスト削除機能 (topページ)	
#### 「削除」ボタンを押すことで、投稿したリストを削除できるようにする。
<a href="https://gyazo.com/43f0b0a8d99c20e0385c9f790fbdf3a1"><img src="https://i.gyazo.com/43f0b0a8d99c20e0385c9f790fbdf3a1.gif" alt="Image from Gyazo" width="1000"/></a>

## リスト編集・更新機能 (list 編集ページ)
#### 「編集」ボタンを押すことで、任意のリストを編集ページに遷移し、リスト内容を変更できる。
<a href="https://gyazo.com/535fb13cc23372d201050d960b1a5e98"><img src="https://i.gyazo.com/535fb13cc23372d201050d960b1a5e98.gif" alt="Image from Gyazo" width="1000"/></a>

## リスト選択機能、リスト内タスク一覧機能(topページ)
#### 選択されたリスト内のタスク名一覧表示ができる。
<a href="https://gyazo.com/732f0cb37bb40a486262ada8c99a1640"><img src="https://i.gyazo.com/732f0cb37bb40a486262ada8c99a1640.gif" alt="Image from Gyazo" width="1000"/></a>

## タスク投稿機能、画像プレビュー機能 (新規タスク作成ページ)	
#### タスク一覧ページの「タスク作成」ボタンを押すことで、タスク作成ページに遷移しタスク内容を作成できる。フォーム入力後に送信ボタンを押すことで、タスク内容(タスク名、説明文、画像)が投稿できる。また、画像を選択したらプレビューできる。
<a href="https://gyazo.com/19f1f7523619f69ac85a8f87af810613"><img src="https://i.gyazo.com/19f1f7523619f69ac85a8f87af810613.gif" alt="Image from Gyazo" width="1000"/></a>

## タスク詳細機能
#### 「詳細」ボタンを押すとタスク詳細ページに遷移し、タスク内容が確認できる。
<a href="https://gyazo.com/a94b1fbb6f5d6b4b44910395dca6d487"><img src="https://i.gyazo.com/a94b1fbb6f5d6b4b44910395dca6d487.gif" alt="Image from Gyazo" width="1000"/></a>

## タスク編集機能	
#### タスク詳細ページで「編集」ボタンを押すとタスク編集ページに遷移し、フォームに入力できる。「更新」ボタンを押すことで、タスク内容を更新できる。ページ遷移先はタスク詳細ページ。
<a href="https://gyazo.com/411adc5c53c4c77120ca68e5883e7a28"><img src="https://i.gyazo.com/411adc5c53c4c77120ca68e5883e7a28.gif" alt="Image from Gyazo" width="1000"/></a>

## タスク削除機能
#### タスク詳細ページで「削除」ボタンを押すとタスクを削除できる。ページ遷移先はタスク一覧ページ。
<a href="https://gyazo.com/bd8b62ed86b9713d3ee5629bc811b9e5"><img src="https://i.gyazo.com/bd8b62ed86b9713d3ee5629bc811b9e5.gif" alt="Image from Gyazo" width="1000"/></a>

## ユーザー管理機能（ログイン機能）
#### ログインページで、登録したメールアドレスとパスワードを入力し、「ログイン」ボタンを押すことで、アプリのトップページへ遷移できる。
<a href="https://gyazo.com/260e75261d7179b1717b6b4103dd97eb"><img src="https://i.gyazo.com/260e75261d7179b1717b6b4103dd97eb.gif" alt="Image from Gyazo" width="1000"/></a>

## ユーザー管理機能（サインアップ機能）
#### アカウント作成ページにて、必要項目を入力し「アカウント作成」ボタンを押すことで、ログインページに遷移できる。
<a href="https://gyazo.com/cd723eaf7eed5c5accc4e817d9d5ed88"><img src="https://i.gyazo.com/cd723eaf7eed5c5accc4e817d9d5ed88.gif" alt="Image from Gyazo" width="1000"/></a>

# 開発環境
## [言語]
Ruby2.6.5
Ruby on Rails 6.0.3.4

## [OS]
macOS Catalina 10.15.6

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
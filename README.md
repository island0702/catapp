# アプリケーション名
CatApp
# アプリケーション概要
CatAppは猫の写真を共有するためのソーシャルメディアアプリです。  
ユーザーは猫の写真を投稿し、他のユーザーと交流することができます。
# URL
（URLを記載）

# 機能
ユーザー機能

ユーザーは新規登録ができる。  
ユーザーはログイン・ログアウトができる。  
ユーザーはプロフィールを編集できる。

投稿機能

ユーザーは猫の写真を投稿できる。
投稿にはタイトル、画像、説明、ハッシュタグが含まれる。  
ユーザーは投稿を削除・編集できる。  
ユーザーは他のユーザーの投稿にコメントを投稿できる。
ユーザーは他のユーザーの投稿にいいねをすることができる。

ハッシュタグ機能

ユーザーは投稿にハッシュタグをつけることができる。
ユーザーはハッシュタグをクリックすることで、同じハッシュタグを含む投稿を一覧できる。

フォロー機能

ユーザーは他のユーザーをフォローすることができる。
ユーザーはフォローしているユーザーの投稿を一覧できる。

# 実装した機能についての画像やGIFおよびその説明
～～画像やGIF、説明を記載～～
# 実装予定機能
現在、フォロー数の計上を検討中。

# DB設計

テーブル: users

カラム: id (Primary Key)  
カラム: username (String, ユーザー名)  
カラム: email (String, メールアドレス)  
カラム: password (String, パスワード)  
カラム: profile_image (String, プロフィール画像)  

テーブル: posts

カラム: id (Primary Key)  
カラム: title (String, タイトル)  
カラム: image (String, 画像URL)  
カラム: description (Text, 説明)  
カラム: user_id (Foreign Key, usersテーブルのid)  

テーブル: comments

カラム: id (Primary Key)  
カラム: content (Text, コメント内容)  
カラム: user_id (Foreign Key, usersテーブルのid)  
カラム: post_id (Foreign Key, postsテーブルのid)  

テーブル: likes

カラム: id (Primary Key)  
カラム: user_id (Foreign Key, usersテーブルのid)  
カラム: post_id (Foreign Key, postsテーブルのid)  

テーブル: hashtags

カラム: id (Primary Key)  
カラム: name (String, ハッシュタグ名)  


テーブル: post_hashtags

カラム: id (Primary Key)  
カラム: post_id (Foreign Key, postsテーブルのid)  
カラム: hashtag_id (Foreign Key, hashtagsテーブルのid)  


テーブル: follows

カラム: id (Primary Key)  
カラム: follower_id (Foreign Key, usersテーブルのid)  
カラム: followed_id (Foreign Key, usersテーブルのid)  

上記のDB設計では、以下のテーブルが使用されています。

users: ユーザー情報を管理するテーブル  
posts: 投稿情報を管理するテーブル  
comments: コメント情報を管理するテーブル  
likes: いいね情報を管理するテーブル  
hashtags: ハッシュタグ情報を管理するテーブル  
post_hashtags: 投稿とハッシュタグの関連情報を管理するテーブル  
follows: ユーザーのフォロー関係を管理するテーブル  

# 画面遷移図


# 開発環境

# ローカルでの動作方法
以下のコマンドを順に実行。  
% git clone https://github.com/username/catapp.git  
% cd catapp  
% bundle install  
% yam install

# 工夫したポイント

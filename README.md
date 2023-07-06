# redmine_date_independent

## 機能
- このプラグインインは、特定のプロジェクトのみ、「開始日 / 期日」を「子チケットから独立」に設定することができます。
  - 通常では「親チケットの値の算出方法」の「開始日 / 期日」の設定はプロジェクトごとには設定できません。
  - 「子チケットの値から算出」の場合、子チケットの期日を変更するとそれに連動して親チケットの期日が変更されます。
  - 「全体の設定では連動するようになっているが、特定のプロジェクトでは独立させたい」という場合にお使いください。
- またオプションとして、特定のステータスのチケットは「子チケットの値から算出」に設定することもできます。

## 対応Redmine
- V4.x (V4.2.3にて動作確認済み)
- V5.x (V5.0.3にて動作確認済み)

## インストール
- Redmineのプラグインのディレクトリにて、以下を実行し、Redmineを再起動してください。

```
$ cd /var/lib/redmine/plugins
$ git clone https://github.com/RedminePower/redmine_date_independent.git
$ bundle exec rake redmine:plugins:migrate NAME=redmine_date_independent RAILS_ENV=production
```

## 使用方法

1. プラグインをインストールすると、管理者メニューに「開始日/期日の独立」が追加されます。
![image](https://github.com/RedminePower/redmine_date_independent/assets/87136359/febd0e09-ac77-47c4-810e-8521d6db9ef0)
1. 「開始日/期日の独立」を押下すると、一覧画面に遷移します。
![image](https://github.com/RedminePower/redmine_date_independent/assets/87136359/bf0fbc0e-5b68-4596-8ca1-9a251261ddbc)
1. 「新しい開始日/期日の独立」を押下し、各種項目を入力し、「作成」ボタンを押下してください。
![image](https://github.com/RedminePower/redmine_date_independent/assets/87136359/158da482-8b27-409b-9377-f6ee554ff3d8)


## アンインストール

- 以下のコマンドを実行して、追加したDBを削除後に、配置したプラグインのフォルダを削除してください。

```
$ cd /var/lib/redmine/plugins
$ bundle exec rake redmine:plugins:migrate NAME=redmine_date_independent VERSION=0 RAILS_ENV=production
$ rm -rf redmine_date_independent
```



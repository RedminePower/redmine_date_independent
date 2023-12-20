# redmine_date_independent

![image](https://github.com/RedminePower/redmine_date_independent/assets/87136359/b6ec8743-bdc8-436f-a712-f3c174cf40f1)

「子チケットの値から算出」の場合、**子チケットの期日** を変更するとそれに連動して **親チケットの期日** が変更されます。そして、この設定は全体の設定であり、プロジェクトごとには設定できません。

しかし、実運用では「_特定のプロジェクトや特定のチケットにおいては、期日の連動をさせたくない_」という場合があるのではないでしょうか？

本プラグインはそういったニーズにお応えすべく作成しました。

## 機能
本プラグインでは、全体の設定として「開始日 / 期日」が「子チケットの値から算出」に設定されていても、**特定のプロジェクトのみ、「子チケットから独立」させる**ことができます。

また、オプションとして、独立させたいプロジェクトでも、特定のステータスのチケットは「子チケットの値から算出」のままにして、期日の連動を行わせることもできます。

## 対応Redmine
- V4.x (V4.2.3にて動作確認済み)
- V5.x (V5.0.3にて動作確認済み)

## インストール
Redmineのプラグインのフォルダにて、以下を実行し、Redmineを再起動してください。

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
以下のコマンドを実行して、追加したDBを削除し、プラグインのフォルダを削除してください。

```
$ cd /var/lib/redmine/plugins
$ bundle exec rake redmine:plugins:migrate NAME=redmine_date_independent VERSION=0 RAILS_ENV=production
$ rm -rf redmine_date_independent
```



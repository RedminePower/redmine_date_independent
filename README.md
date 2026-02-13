# redmine_date_independent

> **Tip**: [redmine_studio_plugin](https://github.com/RedminePower/redmine_studio_plugin) を使うと、この機能を含む複数の便利な機能をまとめて管理できます。
> また、[Redmine Studio](https://www.redmine-power.com/) と組み合わせると、より快適に Redmine をお使いいただけます。

## 概要

親チケットの開始日・期日を子チケットから独立させるプラグインです。

Redmine の「子チケットの値から算出」設定はシステム全体に適用されるため、プロジェクトごとに挙動を変えることができません。
本プラグインを使うことで、特定のプロジェクトやステータスに応じて連動を制御できます。

詳細は [こちら](https://github.com/RedminePower/redmine_studio_plugin/blob/master/docs/date_independent.md) をご覧ください。

## 対応バージョン

- Redmine 5.x（5.1.11 にて動作確認済み）
- Redmine 6.x（6.1.1 にて動作確認済み）

## インストール

Redmine のインストール先はお使いの環境によって異なります。
以下の説明では `/var/lib/redmine` を使用しています。
お使いの環境に合わせて変更してください。

| 環境 | Redmine パス |
|------|-------------|
| apt (Debian/Ubuntu) | `/var/lib/redmine` |
| Docker (公式イメージ) | `/usr/src/redmine` |
| Bitnami | `/opt/bitnami/redmine` |

以下を実行し、Redmine を再起動してください。

```bash
cd /var/lib/redmine/plugins
git clone https://github.com/RedminePower/redmine_date_independent.git
cd /var/lib/redmine
bundle exec rake redmine:plugins:migrate NAME=redmine_date_independent RAILS_ENV=production
```

## アンインストール

以下を実行し、Redmine を再起動してください。

```bash
cd /var/lib/redmine
bundle exec rake redmine:plugins:migrate NAME=redmine_date_independent VERSION=0 RAILS_ENV=production
rm -rf plugins/redmine_date_independent
```

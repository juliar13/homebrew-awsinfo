# Homebrew Formula for awsinfo

このリポジトリには、`awsinfo` CLIツールのHomebrew Formulaが含まれています。

## インストール方法

```bash
brew tap juliar13/awsinfo
brew install awsinfo
```

## `awsinfo`とは？

`awsinfo`は、AWSのIAMユーザーがスイッチできるアカウントとロールを表示するためのシンプルなCLIツールです。詳細については、[awsinfoのリポジトリ](https://github.com/juliar13/awsinfo)を参照してください。

## 使用例

```bash
# バージョン確認
awsinfo --version

# 基本的な使い方
awsinfo

# 特定のユーザー名を指定
awsinfo user-name
```

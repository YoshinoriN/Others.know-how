## 追跡ブランチ
---
### 追跡ブランチを確認する
下記のコマンドで現在のローカルブランチの追跡ブランチを確認できる。（全てのローカルブランチの追跡先が表示される）
```git
git branch -vv
```

### 追跡ブランチを変更する
ローカルのブランチ名を変更した後に、リモートにPushしてもリモートのブランチ名は変更前のままである。（ただし、名前は異なるが追跡状態ではある。）
このような時に、追跡先ブランチ名を変更したければ、ローカルブランチの追跡先を変更する必要がある。

まずはじめに、追跡先を変更したいローカルブランチに切り替える。その後、下記コマンドで追跡先を変更する。
```git
git branch -u origin/ブランチ名
```
※「git branch -vv」で追跡先ブランチを表示した場合に追跡先ブランチの前後に[ ]が表示されるが、「git branch -u origin/ブランチ」を入力するときにはブランチ名の前後に[ ]を入力してはいけない。

### 参考リンク
> https://git-scm.com/book/ja/v2/Git-%E3%81%AE%E3%83%96%E3%83%A9%E3%83%B3%E3%83%81%E6%A9%9F%E8%83%BD-%E3%83%AA%E3%83%A2%E3%83%BC%E3%83%88%E3%83%96%E3%83%A9%E3%83%B3%E3%83%81

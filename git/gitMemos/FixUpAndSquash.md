### 複数のコミットをまとめる
rebaseコマンドを打つ

```git
コミットを指定する場合
git rebase -i コミット番号

HEADから3つ前の場合
git rebase -i HEAD~3
```

#### 1. 複数のコミットのメッセージを個別に編集して一つのコミットにまとめる場合。

 [squash]を使用する。
テキストエディタが立ち上がるので、まとめたいコミットの[pick]の文字を[squash]に変更する。

```git
pick 05383b90dd ほげほげ1
squash 09873b90dh ほげほげ2
squash 05183bjfde ほげほげ3
```
上記の場合、[09873b90dh]と[05183bjfde] のコミットメッセージの変更画面が表示されるので、コミットメッセージを変更する。

完了すると、変更後の[09873b90dh]と[05183bjfde] のコミットおよびコミットメッセージが[05383b90dd]に一つにまとめられる。

#### 2. 複数のコミットを指定したコミットにまとめる

 [fixup]を使用する。
テキストエディタが立ち上がるので、まとめたいコミットの[pick]の文字を[fixup]に変更する。

```git
pick 05383b90dd ほげほげ1
fixup 09873b90dh ほげほげ2
pick 05183bjfde ほげほげ3
```

この場合、[09873b90dh]が[05383b90dd]にまとめられる。
コミットメッセージはほげほげ1のみ残る。

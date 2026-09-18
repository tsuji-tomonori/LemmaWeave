# 果樹園のリンゴ売上

3本×4本に植えた木が各5個のリンゴを実らせ、1個0.5ドルで売るときの売上を求める。

**取得済み固定GSM8Kの1問。**

- 0.5ドルを50セントとして売上を整数で計算する。

## orchard_trees：木の本数

条件：木を3本×4本の長方形状に植える。

根拠：

得られること：木は12本。

既習の根拠：行数×列数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911E.orchard_trees`。

## orchard_apples：リンゴの総数

条件：12本の木から各5個採れる。

根拠：

得られること：リンゴは60個。

既習の根拠：木の本数×1本当たり個数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911E.orchard_apples`。

## orchard_revenue：セントでの売上

条件：60個を1個50セントで売る。

根拠：

得られること：売上は3000セント。

既習の根拠：販売数×単価。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911E.orchard_revenue`。

## orchard_dollars：ドルでの売上

条件：100セントが1ドル。

根拠：

得られること：売上は30ドル。

既習の根拠：通貨単位の換算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911E.orchard_dollars`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0911E.orchard_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

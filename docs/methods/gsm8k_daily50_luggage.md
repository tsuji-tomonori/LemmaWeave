# 追加できる手荷物数

6人が各5個・各50ポンドの荷物を持ち、上限6000ポンドの機体へさらに載せられる50ポンド荷物の数を求める。

**取得済み固定GSM8Kの1問。**

- 現在重量を上限から引き、残りを1個50ポンドで割る。

## luggage_current：現在の個数と重量

条件：6人が各5個、各荷物50ポンド。

根拠：

得られること：現在30個、1500ポンド。

既習の根拠：積。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0918A.luggage_current`。

## luggage_remaining：残り重量

条件：上限6000ポンドから1500ポンドを引く。

根拠：

得られること：残り4500ポンド。

既習の根拠：差の関係。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0918A.luggage_remaining`。

## luggage_additional：追加個数

条件：残り4500ポンドを1個50ポンドで分ける。

根拠：

得られること：さらに90個載せられる。

既習の根拠：等分。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0918A.luggage_additional`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0918A.luggage_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

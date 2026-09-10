# 肖像画の3日間売上

8インチ画3枚と16インチ画5枚を毎日売るときの3日間売上を求める。

**取得済み固定GSM8Kの1問。**

- 16インチ画の価格は8インチ画の2倍。

## portraits_large_price：16インチ画の価格

条件：5ドルの2倍。

根拠：

得られること：1枚10ドル。

既習の根拠：倍率の乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910D.portraits_large_price`。

## portraits_small_daily：8インチ画の日売上

条件：5ドルの絵を3枚売る。

根拠：

得られること：15ドル。

既習の根拠：単価と枚数の乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910D.portraits_small_daily`。

## portraits_large_daily：16インチ画の日売上

条件：10ドルの絵を5枚売る。

根拠：

得られること：50ドル。

既習の根拠：単価と枚数の乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910D.portraits_large_daily`。

## portraits_daily：1日の売上

条件：15ドルと50ドルを合算する。

根拠：

得られること：1日65ドル。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910D.portraits_daily`。

## portraits_total：3日間の売上

条件：毎日65ドルを3日間得る。

根拠：

得られること：答えは195ドル。

既習の根拠：同じ日額の乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910D.portraits_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0910D.portraits_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

# すべての瓶を満たす折り紙の星

15個ずつ入る瓶を最初に2本、その後さらに同じ瓶を3本買ったとき、全部を満たす星の数を求める。

**取得済み固定GSM8Kの1問。**

- 追加の3本も各15個入る同一容量。

## bottles_total：瓶の総数

条件：最初の2本に3本を追加する。

根拠：

得られること：瓶は5本。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910A.bottles_total`。

## bottles_stars：必要な星の数

条件：5本すべてに15個ずつ入れる。

根拠：

得られること：5×15=75個。

既習の根拠：瓶数×瓶当たり容量。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910A.bottles_stars`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0910A.bottles_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

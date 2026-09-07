# 代金の半分・2倍を共通基準から求める

チェダー2ポンドの代金10ドル。クリームチーズ1ポンドの代金はその半分、コールドカット1パックはその2倍。合計代金は？

**取得済み固定GSM8Kの1問。LLMが原文から個別に解答し、新規取得件数・日本入試件数へ混ぜない。**

- 10ドルはチェダー2ポンドの全体価格で単価ではない。重量比を代金比へ勝手に置換しない。

## cheese_cream：クリームチーズ代

条件：チェダー全体10ドルの半分、2c=10。

根拠：[積の関係から部分量を求める](fraction_balance.md)

得られること：c=5ドル。

既習の根拠：中学既習の四則演算と一次方程式。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907.cheese_cream`。

## cheese_cold：コールドカット代

条件：チェダー全体10ドルの2倍。

根拠：

得られること：m=20ドル。

既習の根拠：中学既習の四則演算と一次方程式。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907.cheese_cold`。

## cheese_total：3品の代金を合計

条件：各品の代金を一度ずつ加える。

根拠：

得られること：10+5+20=35ドル。

既習の根拠：中学既習の四則演算と一次方程式。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907.cheese_total`。

## cheese_exists：充足例

条件：c=5,m=20,t=35。

根拠：

得られること：半分・2倍・合計条件をすべて満たす。

既習の根拠：中学既習の四則演算と一次方程式。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907.cheese_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0907.cheese_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

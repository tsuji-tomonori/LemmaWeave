# 半分と追加取得後の残りから元の個数を逆算

Jackが全体の半分と4個を取り、残り7個をPaulが取った。最初の個数を求める。

**取得済み固定GSM8Kの1問。**

- Jackの取得後に残った全7個をPaulが取る。

## sweets_half：最初の半分を求める

条件：全体Tは2H、かつT=(H+4)+7である。

根拠：

得られること：半分Hは11個。

既習の根拠：2H=H+11という自然数一次方程式を解く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912D.sweets_half`。

## sweets_total：最初の全体を求める

条件：最初の半分が11個。

根拠：

得られること：最初は22個。

既習の根拠：全体＝2×半分。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912D.sweets_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0912D.sweets_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

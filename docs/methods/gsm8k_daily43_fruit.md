# 袋から落ちた果物からプラム数を求める

購入した果物の半分が落ちて9個残ったことから総数を逆算し、既知の果物を除く。

**取得済み固定GSM8Kの1問。**

- すべてをpiece単位で数え、半分が落ちた後に半分の9個が残ったとする。

## fruit_total：既知数と購入総数

条件：梨6個、りんご4個、パイナップル2個。購入総数の半分が9個残った。

根拠：

得られること：既知の果物は12個、購入総数は18個。

既習の根拠：加法と、半分の逆算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915D.fruit_total`。

## fruit_plums：プラム数

条件：購入総数18個のうち、既知の3種類が12個。

根拠：

得られること：プラムは6個。

既習の根拠：全体から既知部分を引く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915D.fruit_plums`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0915D.fruit_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

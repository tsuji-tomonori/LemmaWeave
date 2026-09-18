# 持参金と残金から購入量を逆算する

1オンス25セントのソーダを、2ドル持参して50セント残したとき、何オンス買ったか求める。

**取得済み固定GSM8Kの1問。**

- 端数誤差を避けるためドルをセントへ換算し、他の支出や税はないという文章上の含意を用いる。

## soda_spent：ソーダに使った金額

条件：200セント持参し50セント残る。

根拠：

得られること：200-50=150セントを使った。

既習の根拠：中学校までの減法と通貨換算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908D.soda_spent`。

## soda_ounces：購入量

条件：1オンス25セントで合計150セント。

根拠：

得られること：25×6=150より6オンス。

既習の根拠：中学校までの一次方程式。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908D.soda_ounces`。

## soda_exists：条件の充足

条件：支出150セント、購入6オンスと置く。

根拠：

得られること：残金差と単価の両条件を満たす。

既習の根拠：等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908D.soda_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0908D.soda_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

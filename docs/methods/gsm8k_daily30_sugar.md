# 均等分けした一袋の半分を失った残量

砂糖24kgを4袋へ等分し、一袋の半分が落ちた後の残量を求める。

**取得済み固定GSM8Kの1問。**

- 破れた一袋以外の砂糖は失われない。

## sugar_each：一袋の重さ

条件：24kgを4袋へ等分する。

根拠：

得られること：一袋は6kg。

既習の根拠：総量＝袋数×一袋量。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912D.sugar_each`。

## sugar_spilled：落ちた重さ

条件：一袋6kgの半分が落ちる。

根拠：

得られること：落ちた砂糖は3kg。

既習の根拠：半分は2×半分＝全体で表す。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912D.sugar_spilled`。

## sugar_remaining：残量を求める

条件：元の24kgから3kgだけ失われた。

根拠：

得られること：21kg残る。

既習の根拠：元の量＝損失量＋残量。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912D.sugar_remaining`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0912D.sugar_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

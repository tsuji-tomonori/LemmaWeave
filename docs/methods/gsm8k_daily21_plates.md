# 3コース料理に必要な皿

30人の招待客とその半数の同伴者に3コースを新しい皿で出すときの皿数を求める。

**取得済み固定GSM8Kの1問。**

- 全招待客が出席し、招待客の半数が各1人を同伴する。

## plates_plus_ones：同伴者数

条件：30人の半数が1人ずつ同伴する。

根拠：

得られること：同伴者は15人。

既習の根拠：半分と整数方程式2×15=30。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910E.plates_plus_ones`。

## plates_attendees：食事人数

条件：招待客30人に同伴者15人を加える。

根拠：

得られること：食事をする人は45人。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910E.plates_attendees`。

## plates_total：必要な皿数

条件：45人が3コースごとに新しい皿を1枚使う。

根拠：

得られること：答えは45×3=135枚。

既習の根拠：1人1コース当たり1枚という比例。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910E.plates_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0910E.plates_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

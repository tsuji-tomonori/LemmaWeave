# 二つの購入式からバナナ束の価格を求める

リンゴ2ダースとバナナ1束が7ドル、リンゴ1ダースと同じバナナ1束が5ドルのとき、バナナ1束の価格を求める。

**取得済み固定GSM8Kの1問。**

- 両者が買ったバナナ1束は同価格、リンゴは1ダース当たり同価格とする。

## fruit_apple_price：リンゴ1ダースの価格を求める

条件：二つの購入はバナナ1束が共通で、Tonyの方がリンゴ1ダース多く総額は2ドル高い。

根拠：

得られること：リンゴ1ダースは2ドル。

既習の根拠：二つの一次方程式を引いて共通項を消去する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914B.fruit_apple_price`。

## fruit_banana_price：バナナ1束の価格を求める

条件：Arnoldの5ドルはリンゴ1ダース2ドルとバナナ1束の合計。

根拠：

得られること：バナナ1束は3ドル。

既習の根拠：5-2を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914B.fruit_banana_price`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0914B.fruit_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

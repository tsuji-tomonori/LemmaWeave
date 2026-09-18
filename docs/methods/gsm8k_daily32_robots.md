# セント単位で商品代・税・釣銭を合計する

8.75ドルのロボット7個、税7.22ドル、釣銭11.53ドルから所持金を求める。

**取得済み固定GSM8Kの1問。**

- 小数丸めを避けるため全金額を1ドル=100セントで表す。

## robots_goods：商品代を求める

条件：1個875セントのロボットを7個買う。

根拠：

得られること：商品代は6125セント。

既習の根拠：875×7を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913A.robots_goods`。

## robots_spent：支払額を求める

条件：商品代6125セントへ税722セントを加える。

根拠：

得られること：支払額は6847セント。

既習の根拠：6125+722を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913A.robots_spent`。

## robots_start：最初の所持金を求める

条件：6847セントを払い、1153セントが残った。

根拠：

得られること：最初は8000セント、すなわち80ドル。

既習の根拠：支払額と釣銭を6847+1153と足す。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913A.robots_start`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0913A.robots_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

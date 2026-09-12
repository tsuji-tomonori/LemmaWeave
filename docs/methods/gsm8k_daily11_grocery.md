# 買い物の支出を合計して残金を求める

パン2ドル、バター3ドル、パンの2倍の値段のジュースを15ドルから買った残金を求める。

**取得済み固定GSM8Kの1問。**


## grocery_juice：ジュースの価格

条件：ジュースは2ドルのパンの2倍の価格。

根拠：

得られること：ジュースは4ドル。

既習の根拠：倍率の乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908F.grocery_juice`。

## grocery_spent：支出合計

条件：パン2、バター3、ジュース4ドル。

根拠：

得られること：支出は2+3+4=9ドル。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908F.grocery_spent`。

## grocery_left：残金

条件：所持金15ドルから9ドルを支払う。

根拠：

得られること：残金は6ドル。

既習の根拠：残額の減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908F.grocery_left`。

## grocery_exists：条件の充足

条件：ジュース4、支出9、残金6ドルと置く。

根拠：

得られること：価格、支出、残額条件を満たす。

既習の根拠：数値等式の確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908F.grocery_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0908F.grocery_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

# 4日間に産む卵の総数

各日の規則から1日ごとの個数を求め、4日間を合計する。

**取得済み固定GSM8Kの1問。**

- last day she doubles the first three days totalを、4日目の産卵数が最初の3日合計の2倍という意味にした。

## frog_early：最初の3日

条件：1日目50個、2日目はその2倍、3日目は2日目より20個多い。

根拠：

得られること：2日目100個、3日目120個、最初の3日合計270個。

既習の根拠：倍と増加分を順に計算して加える。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915D.frog_early`。

## frog_last：4日目

条件：4日目は最初の3日合計270個の2倍。

根拠：

得られること：4日目は540個。

既習の根拠：2倍の乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915D.frog_last`。

## frog_total：4日間の合計

条件：最初の3日270個と4日目540個を合わせる。

根拠：

得られること：4日間で810個。

既習の根拠：期間別の量の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915D.frog_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0915D.frog_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

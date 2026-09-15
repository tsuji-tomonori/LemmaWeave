# 身長差を復元して三人の平均を求める

Reeseを基準にDaisyとParkerの身長を求め、三人の平均身長を計算する。

**取得済み固定GSM8Kの1問。**

- 原題のDaisyはReeseより8インチ高いという条件を採用する。
- 参照解の説明文にある6インチは、その直後の計算および原題と食い違う誤記なので用いない。

## heights_daisy：Daisyの身長を求める

条件：Reeseは60インチ、DaisyはReeseより8インチ高い。

根拠：

得られること：Daisyは68インチ。

既習の根拠：基準の身長に正の差8を加える。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912E.heights_daisy`。

## heights_parker：Parkerの身長を求める

条件：Parkerは68インチのDaisyより4インチ低い。

根拠：

得られること：Parkerは64インチ。

既習の根拠：Parker+4=Daisyという減法を避けた自然数方程式を解く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912E.heights_parker`。

## heights_total：三人の身長を合計する

条件：三人の身長は60、68、64インチである。

根拠：

得られること：身長の合計は192インチ。

既習の根拠：平均の分子として三つの値を加える。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912E.heights_total`。

## heights_average：平均身長を求める

条件：三人の合計が192インチで、人数は3人である。

根拠：

得られること：平均身長は64インチ。

既習の根拠：合計＝人数×平均という等分の式を解く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912E.heights_average`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0912E.heights_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

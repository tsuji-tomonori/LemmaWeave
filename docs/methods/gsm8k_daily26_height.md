# BellaとAnneの妹の身長差

Anneは妹の2倍、BellaはAnneの3倍の身長で、Anneが80cmのときBellaと妹の身長差を求める。

**取得済み固定GSM8Kの1問。**

- 妹・Anne・Bellaの倍率関係を同じcm単位で表す。

## height_sister：妹の身長

条件：Anneの80cmは妹の身長の2倍。

根拠：

得られること：妹は40cm。

既習の根拠：元の量＝比較量÷倍率。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911E.height_sister`。

## height_bella：Bellaの身長

条件：Bellaは80cmのAnneの3倍。

根拠：

得られること：Bellaは240cm。

既習の根拠：比較量＝元の量×倍率。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911E.height_bella`。

## height_difference：身長差

条件：Bellaは240cm、Anneの妹は40cm。

根拠：

得られること：身長差は200cm。

既習の根拠：大きい量－小さい量。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911E.height_difference`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0911E.height_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

# 本の利益から顧客数を求める

1冊当たり利益から販売冊数を求め、1人2冊の条件で顧客数へ換算する。

**取得済み固定GSM8Kの1問。**

- getting $20 for each bookを売価20ドルとし、製作費5ドルを引いた額を1冊当たり利益とする。

## profit_per_book：1冊当たり利益

条件：1冊を20ドルで売り、製作費は5ドル。

根拠：

得られること：1冊当たり利益は15ドル。

既習の根拠：利益=売価−費用。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915D.profit_per_book`。

## profit_books：販売冊数

条件：1冊15ドルの利益で総利益120ドル。

根拠：

得られること：8冊販売した。

既習の根拠：個数=総量÷単位量。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915D.profit_books`。

## profit_customers：顧客数

条件：販売8冊で、各顧客が2冊ずつ買う。

根拠：

得られること：顧客は4人。

既習の根拠：組数=総個数÷1組の個数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915D.profit_customers`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0915D.profit_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

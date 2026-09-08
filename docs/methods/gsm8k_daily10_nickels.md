# 交換後の硬貨価値を種類別に合計する

20枚の25セント硬貨を5セント硬貨へ交換し、その20%が各3ドルのiron nickelだったときの総価値を求める。

**取得済み固定GSM8Kの1問。**

- 交換は額面を保存し、通常nickelは5セント、iron nickelは各300セントとする。

## nickels_count：交換後の枚数

条件：quarter 1枚はnickel 5枚と同額。

根拠：

得られること：20×5=100枚。

既習の根拠：通貨換算と乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908E.nickels_count`。

## nickels_iron：iron nickelの枚数

条件：100枚の20%がiron nickel。

根拠：

得られること：100×20÷100=20枚。

既習の根拠：中学校までの百分率。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908E.nickels_iron`。

## nickels_regular：通常nickelの枚数

条件：全100枚からiron nickel 20枚を除く。

根拠：

得られること：通常nickelは80枚。

既習の根拠：減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908E.nickels_regular`。

## nickels_iron_value：iron nickelの価値

条件：iron nickelは20枚、各300セント。

根拠：

得られること：6000セント。

既習の根拠：乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908E.nickels_iron_value`。

## nickels_regular_value：通常nickelの価値

条件：通常nickelは80枚、各5セント。

根拠：

得られること：400セント。

既習の根拠：乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908E.nickels_regular_value`。

## nickels_total：総価値

条件：2種類の価値を加える。

根拠：

得られること：6400セント、すなわち64ドル。

既習の根拠：加法と100セント=1ドルの換算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908E.nickels_total`。

## nickels_exists：条件の充足

条件：100枚をiron 20枚、通常80枚に分ける。

根拠：

得られること：割合・各価値・合計の全条件を満たす。

既習の根拠：等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908E.nickels_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0908E.nickels_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

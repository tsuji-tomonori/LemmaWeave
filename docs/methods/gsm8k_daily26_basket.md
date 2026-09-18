# Jackの現在量に対するJillの籠容量

Jackの籠は12個で満杯だが今は4個分空き、Jillの満杯容量はその2倍である。Jackの現在量がJillの籠に何回入るか求める。

**取得済み固定GSM8Kの1問。**

- 比較対象はJackの現在のリンゴ数とJillの満杯容量。

## basket_current：Jackの現在量

条件：Jackの容量は12個で、4個分の空きがある。

根拠：

得られること：現在は8個入っている。

既習の根拠：現在量＝容量－空き。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911E.basket_current`。

## basket_jill：Jillの籠容量

条件：Jillの満杯容量はJackの12個の2倍。

根拠：

得られること：Jillの籠は24個入る。

既習の根拠：比較量＝基準量×倍率。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911E.basket_jill`。

## basket_times：入る回数

条件：Jackの現在量は8個、Jillの容量は24個。

根拠：

得られること：Jackの現在量は3回分入る。

既習の根拠：回数＝全容量÷1回分。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911E.basket_times`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0911E.basket_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

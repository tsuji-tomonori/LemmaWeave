# 3瓶のビー玉総数

A瓶28個、Aより12個多いB瓶、Bの2倍のC瓶を合計する。

**取得済み固定GSM8Kの1問。**

- Bの比較基準はA、Cの比較基準はBである。

## marbles_bc：B瓶とC瓶

条件：A瓶は28個、B瓶はAより12個多く、C瓶はBの2倍。

根拠：

得られること：B瓶は28+12=40個、C瓶は2×40=80個。

既習の根拠：差による加法と倍の乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917A.marbles_bc`。

## marbles_total：3瓶の合計

条件：A、B、Cには順に28個、40個、80個ある。

根拠：

得られること：全部で28+40+80=148個。

既習の根拠：三つの個数の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917A.marbles_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0917A.marbles_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

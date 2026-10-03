# 分数と倍数から貝殻数を求める

BenはLaurieの3分の1、AlanはBenの4倍。Laurieが36個のときAlanの個数を求める。

**取得済み固定GSM8Kの1問。**

- 貝殻数を自然数とし、3×Ben=36で3分の1を表す。

## shells_ben：Benの個数

条件：Benの3倍がLaurieの36個。

根拠：

得られること：Benは12個。

既習の根拠：中学校までの一次方程式。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907E.shells_ben`。

## shells_alan：Alanの個数

条件：AlanはBenの4倍。

根拠：

得られること：4×12=48個。

既習の根拠：中学校までの乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907E.shells_alan`。

## shells_exists：条件の充足

条件：Benを12個、Alanを48個と置く。

根拠：

得られること：3分の1と4倍の条件を満たす。

既習の根拠：中学校までの等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907E.shells_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0907E.shells_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

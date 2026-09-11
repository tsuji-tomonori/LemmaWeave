# ビー玉の倍率と差

Mabelが85個でKatrinaの5倍、Amandaに12個足すとKatrinaの2倍になるとき、MabelとAmandaの差を求める。

**取得済み固定GSM8Kの1問。**

- 個数は自然数とし、倍率と不足分を等式で表す。

## marble_katrina：Katrinaの個数

条件：Mabelの85個はKatrinaの5倍。

根拠：

得られること：Katrinaは17個。

既習の根拠：全体＝倍率×基準量の整数方程式。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912B.marble_katrina`。

## marble_twice：Katrinaの2倍

条件：Katrinaは17個。

根拠：

得られること：その2倍は34個。

既習の根拠：倍の量＝2×基準量。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912B.marble_twice`。

## marble_amanda：Amandaの個数

条件：Amandaに12個足すと34個。

根拠：

得られること：Amandaは22個。

既習の根拠：不足分を加えた等式を解く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912B.marble_amanda`。

## marble_difference：個数の差

条件：Mabelは85個、Amandaは22個。

根拠：

得られること：MabelはAmandaより63個多い。

既習の根拠：大きい量＝小さい量＋差。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912B.marble_difference`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0912B.marble_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

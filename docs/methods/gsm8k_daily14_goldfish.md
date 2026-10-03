# 水面下の金魚

水面にいる25%が15匹のとき、全体と水面下の匹数を求める。

**取得済み固定GSM8Kの1問。**

- 数えた15匹は水面にいる全個体で、これが全体の25%と読む。

## goldfish_total：全体の匹数

条件：水面の15匹が全体の25%=4分の1。

根拠：

得られること：全体は15×4=60匹。

既習の根拠：割合から全体量を逆算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909C.goldfish_total`。

## goldfish_below：水面下の匹数

条件：全60匹のうち水面に15匹。

根拠：

得られること：水面下は60-15=45匹。

既習の根拠：全体から見える部分を引く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909C.goldfish_below`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0909C.goldfish_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

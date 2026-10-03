# 各組から除いたビーズ数

青23個と黄16個を3等分し、各組から何個か除いて残りを2倍すると6個になったとき、各組から除いた数を求める。

**取得済み固定GSM8Kの1問。**

- 3等分後の各組13個から、倍にする前の残り3個を引く。

## beads_total：ビーズ総数

条件：青23個と黄16個。

根拠：

得られること：合計は39個。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909E.beads_total`。

## beads_each：3等分した各組

条件：39個を3つの等しい組に分ける。

根拠：

得られること：各組は13個。

既習の根拠：等分。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909E.beads_each`。

## beads_left：倍にする前の残り

条件：残りを2倍すると6個。

根拠：

得られること：倍にする前は3個。

既習の根拠：逆算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909E.beads_left`。

## beads_removed：除いた個数

条件：各組13個から3個が残った。

根拠：

得られること：各組から13-3=10個除いた。

既習の根拠：差の計算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909E.beads_removed`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0909E.beads_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

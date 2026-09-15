# 1年前のライオン数

毎月5頭生まれ1頭死に、1年後148頭のときの初期頭数を求める。

**取得済み固定GSM8Kの1問。**

- 出生率と死亡率が毎月一定で、ほかの増減がない。

## lions_net：毎月の純増

条件：毎月5頭生まれ、1頭死ぬ。

根拠：

得られること：毎月の純増は5−1=4頭。

既習の根拠：増加量と減少量の差。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910E.lions_net`。

## lions_increase：1年間の純増

条件：毎月4頭の純増が12か月続く。

根拠：

得られること：1年間の純増は4×12=48頭。

既習の根拠：一定率の反復を乗法で表す。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910E.lions_increase`。

## lions_initial：初期頭数

条件：最終148頭は初期頭数に48頭を加えたもの。

根拠：

得られること：答えは148−48=100頭。

既習の根拠：加法関係の逆算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910E.lions_initial`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0910E.lions_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

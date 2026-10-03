# 赤信号のある経路

3個の信号がすべて赤の第1経路と14分の第2経路の差を求める。

**取得済み固定GSM8Kの1問。**

- 各赤信号は3分ずつ加算される。

## routes_first：第1経路の時間

条件：基準10分に赤信号3個の各3分を足す。

根拠：

得られること：第1経路は10+3×3=19分。

既習の根拠：同じ遅延時間の反復加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917C.routes_first`。

## routes_longer：経路の時間差

条件：第1経路19分、第2経路14分。

根拠：

得られること：第1経路は5分長い。

既習の根拠：二つの所要時間の差。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917C.routes_longer`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0917C.routes_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

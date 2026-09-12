# 毛糸の総数から編めるマフラー枚数を求める

毛糸1個でマフラー3枚を編める。赤2個、青6個、黄4個なら合計何枚か。

**取得済み固定GSM8Kの1問。**

- 色ごとの毛糸数を合計し、毛糸1個当たり3枚を掛ける。

## scarves_yarns：毛糸を合計する

条件：赤2個、青6個、黄4個の毛糸がある。

根拠：

得られること：毛糸は合計12個である。

既習の根拠：互いに異なる色の個数を加える。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912C.scarves_yarns`。

## scarves_total：編める枚数を求める

条件：毛糸は12個で、1個から3枚編める。

根拠：

得られること：マフラーは36枚編める。

既習の根拠：総資源数×単位当たり生産数を用いる。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912C.scarves_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0912C.scarves_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

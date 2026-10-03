# 既知の割合を全売上から除いて残りを求める

36件の売上の3分の1が布地、4分の1が宝飾、残りが文具のとき文具売上を求める。

**取得済み固定GSM8Kの1問。**

- 3部門は互いに重複せず36件全体を尽くす。

## section_fabric：布地部門

条件：36件の3分の1。

根拠：

得られること：12件。

既習の根拠：分数の乗法・除法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908E.section_fabric`。

## section_jewelry：宝飾部門

条件：36件の4分の1。

根拠：

得られること：9件。

既習の根拠：分数の乗法・除法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908E.section_jewelry`。

## section_stationery：文具部門

条件：全36件から布地12件と宝飾9件を除く。

根拠：

得られること：15件。

既習の根拠：減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908E.section_stationery`。

## section_exists：条件の充足

条件：12、9、15件と置く。

根拠：

得られること：割合と全体36件を満たす。

既習の根拠：等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908E.section_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0908E.section_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

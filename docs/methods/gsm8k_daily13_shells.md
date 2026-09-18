# 譲渡と半数販売後の貝殻

180個から40個と30個を譲り、残りの半分を売った後の個数を求める。

**取得済み固定GSM8Kの1問。**

- 半分は2回の譲渡後の残数へ適用する。

## shells_after_friends：友人へ譲った後

条件：180個から40個を譲る。

根拠：

得られること：140個残る。

既習の根拠：減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909B.shells_after_friends`。

## shells_after_brothers：兄弟へ譲った後

条件：140個から30個を譲る。

根拠：

得られること：110個残る。

既習の根拠：減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909B.shells_after_brothers`。

## shells_sold：売った個数

条件：110個の半分を売る。

根拠：

得られること：55個を売る。

既習の根拠：2等分。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909B.shells_sold`。

## shells_left：最終残数

条件：110個から55個を売る。

根拠：

得られること：55個残る。

既習の根拠：減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909B.shells_left`。

## shells_exists：条件の充足

条件：各段階を180、140、110、55、55と置く。

根拠：

得られること：全条件を満たす。

既習の根拠：数値等式の確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909B.shells_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0909B.shells_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

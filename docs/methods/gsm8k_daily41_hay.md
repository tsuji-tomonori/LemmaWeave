# 干し草の年末残量

面積当たりの月産量から今年の年間収穫量を求め、9月から12月までの馬の消費量を引く。

**取得済み固定GSM8Kの1問。**

- 原文だけでは今年の収穫月数が未指定である。昨年と今年で1エーカー当たり月産量が同じで、今年の12エーカーを12か月収穫する追加条件の下で解く。9月1日から12月31日までは122日。

## hay_rate：単位面積当たり月産量

条件：5エーカーから月560俵を収穫する。

根拠：

得られること：1エーカー当たり月112俵。

既習の根拠：単位量=全体量÷個数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915B.hay_rate`。

## hay_production：今年の収穫量

条件：今年は5+7=12エーカーで、1エーカー当たり月112俵を12か月収穫する。

根拠：

得られること：月1344俵、年間16128俵。

既習の根拠：一定の単位量に面積と月数を順に掛ける。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915B.hay_monthly`。

## hay_consumed：馬の消費量

条件：9頭が1日3俵ずつ、122日間食べる。

根拠：

得られること：消費量は3294俵。

既習の根拠：1日量=頭数×1頭分、総量=1日量×日数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915B.hay_consumed`。

## hay_left：年末残量

条件：年間16128俵から3294俵を消費する。

根拠：

得られること：年末に12834俵残る。

既習の根拠：残量=収穫量−消費量。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915B.hay_solution`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0915B.hay_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

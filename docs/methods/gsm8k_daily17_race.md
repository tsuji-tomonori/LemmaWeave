# 亀が同着するための時間差

20フィート競走で、秒速10フィートのウサギと秒速1フィートの亀が同着するため、亀を何秒先に出すか求める。

**取得済み固定GSM8Kの1問。**

- 両者が一定速度で同じ20フィートを進むとし、所要時間の差だけ亀を先に出す。

## race_hare_time：ウサギの所要時間

条件：20フィートを秒速10フィートで走る。

根拠：

得られること：2秒。

既習の根拠：時間=距離÷速さ。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910A.race_hare_time`。

## race_turtle_time：亀の所要時間

条件：20フィートを秒速1フィートで進む。

根拠：

得られること：20秒。

既習の根拠：時間=距離÷速さ。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910A.race_turtle_time`。

## race_head_start：必要な先行時間

条件：同着には亀の20秒とウサギの2秒の所要時間差だけ先に出す。

根拠：

得られること：20-2=18秒。

既習の根拠：所要時間差。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910A.race_head_start`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0910A.race_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

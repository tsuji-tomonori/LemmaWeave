# 人日を保存して人数減少後の食料日数を求める

300人を90日養える食料を30日消費し、100人が去った後に残る日数を求める。

**取得済み固定GSM8Kの1問。**

- 一人一日当たりの消費量が一定で、補給・廃棄がないとき、食料量を人日で表せる。

## castle_people：残る人数を求める

条件：300人から100人が去る。

根拠：

得られること：残るのは200人。

既習の根拠：300=200+100となる差を求める。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913A.castle_people`。

## castle_food：残る食料を人日で求める

条件：当初の食料は300×90人日で、300人が30日消費した。

根拠：

得られること：残量は18000人日。

既習の根拠：27000人日から9000人日を引く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913A.castle_food`。

## castle_days：200人で持つ日数を求める

条件：18000人日を200人が同じ率で消費する。

根拠：

得られること：食料はさらに90日持つ。

既習の根拠：人日=人数×日数より18000=200×90。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913A.castle_days`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0913A.castle_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

# 曜日ごとの交通量を合計する

火曜25台を基準に月曜、水曜、木金、週末の台数を求め、月曜から日曜まで合計する。

**取得済み固定GSM8Kの1問。**

- about 10 cars each dayは参考解答と同じく木曜・金曜を各10台として計算する。

## traffic_monday：月曜の台数

条件：火曜25台より20%少ない。

根拠：

得られること：減少は5台なので月曜は20台。

既習の根拠：割合と減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908F.traffic_monday`。

## traffic_wednesday：水曜の台数

条件：月曜より2台多い。

根拠：

得られること：20+2=22台。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908F.traffic_wednesday`。

## traffic_weekdays：木曜と金曜

条件：木曜と金曜は各10台とする。

根拠：

得られること：2日で20台。

既習の根拠：乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908F.traffic_weekdays`。

## traffic_weekend：週末

条件：土曜と日曜は各5台。

根拠：

得られること：2日で10台。

既習の根拠：乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908F.traffic_weekend`。

## traffic_total：7日間の合計

条件：月20、火25、水22、木金20、週末10台。

根拠：

得られること：合計は20+25+22+20+10=97台。

既習の根拠：排反な曜日ごとの加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908F.traffic_total`。

## traffic_exists：条件の充足

条件：各中間量を20、22、20、10、合計97と置く。

根拠：

得られること：全曜日の条件を満たす。

既習の根拠：数値等式の確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908F.traffic_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0908F.traffic_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

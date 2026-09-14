# 駐車場の探索時間

G区15列各10台、H区20列各9台を毎分11台で通過する。

**取得済み固定GSM8Kの1問。**

- 全列の収容台数分を一定速度で通過。

## parking_sections：総台数

条件：Gは150台、Hは180台。

根拠：

得られること：合計330台。

既習の根拠：区画別の積を加える。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914E.parking_sections`。

## parking_time：時間

条件：330台を毎分11台。

根拠：

得られること：30分。

既習の根拠：総数=速度×時間。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914E.parking_time`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0914E.parking_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

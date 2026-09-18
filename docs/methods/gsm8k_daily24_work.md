# 職場にいた時間

8時から11時、11時から13時、さらに2時間働いたとき、職場に滞在した総時間を求める。

**取得済み固定GSM8Kの1問。**

- 会議も職場滞在時間に含め、区間が連続する。

## work_office：午前の執務

条件：8時から11時まで。

根拠：

得られること：3時間。

既習の根拠：終了時刻−開始時刻。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911C.work_office`。

## work_meeting：会議

条件：11時から13時まで。

根拠：

得られること：2時間。

既習の根拠：終了時刻−開始時刻。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911C.work_meeting`。

## work_before_final：13時までの滞在

条件：執務3時間と会議2時間は連続し重ならない。

根拠：

得られること：5時間。

既習の根拠：時間区間の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911C.work_before_final`。

## work_total：総滞在時間

条件：13時までの5時間にさらに2時間働く。

根拠：

得られること：合計7時間。

既習の根拠：時間の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911C.work_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0911C.work_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

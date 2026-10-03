# 駐車場を探した時間

G区画15行各10台とH区画20行各9台をすべて歩き、毎分11台を通過するときの探索時間を求める。

**取得済み固定GSM8Kの1問。**

- 各区画の収容台数を全行で数え、一定の通過率を適用する。

## parking_g_cars：G区画の台数

条件：G区画は15行で、各行に10台ある。

根拠：

得られること：G区画は150台。

既習の根拠：行数×1行当たり台数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911E.parking_g_cars`。

## parking_h_cars：H区画の台数

条件：H区画は20行で、各行に9台ある。

根拠：

得られること：H区画は180台。

既習の根拠：行数×1行当たり台数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911E.parking_h_cars`。

## parking_total：通過した全台数

条件：G・H両区画の全行を歩く。

根拠：

得られること：合計330台を通過する。

既習の根拠：部分の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911E.parking_total`。

## parking_minutes：探索時間

条件：330台を毎分11台の一定割合で通過する。

根拠：

得られること：探索時間は30分。

既習の根拠：時間＝総量÷単位時間当たり量。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911E.parking_minutes`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0911E.parking_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

# 番組の総視聴時間を日割りする

30分の番組20話を5日で見るとき、1日何時間見るか求める。

**取得済み固定GSM8Kの1問。**

- 全話を均等な日数で見る。

## show_minutes：全話の分数

条件：20話が各30分。

根拠：

得られること：総視聴時間は600分。

既習の根拠：総分数＝話数×1話の分数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912C.show_minutes`。

## show_hours：時間へ換算

条件：1時間＝60分。

根拠：

得られること：600分は10時間。

既習の根拠：60×時間数＝分数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912C.show_hours`。

## show_daily：1日分

条件：10時間を5日へ均等配分する。

根拠：

得られること：1日2時間。

既習の根拠：総時間＝日数×1日当たり時間。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912C.show_daily`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0912C.show_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

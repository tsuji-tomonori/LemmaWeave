# 床腕立てまでの週数

週5日訓練し、壁・高所・低所を経て床腕立てへ進むまでの期間を、追加条件付きで求める。

**取得済み固定GSM8Kの1問。**

- 開始回数が未指定なので原文だけでは一意でない。参考解答の各段階15訓練日を追加条件とする。

## pushup_training_days：床腕立て前の訓練日数

条件：追加条件として壁・高所・低所の3段階を各15訓練日で終える。

根拠：

得られること：必要な訓練日は45日。

既習の根拠：積。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0918A.pushup_training_days`。

## pushup_weeks：週数への換算

条件：週5日で45日訓練する。

根拠：

得られること：追加条件下では9週間。

既習の根拠：等分。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0918A.pushup_weeks`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0918A.pushup_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

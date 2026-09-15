# 二つの学校段階の生徒総数

小学校人数を中学校人数の4倍より3人少ない数として、両段階の合計を求める。

**取得済み固定GSM8Kの1問。**

- three less than four timesを4倍から3を引く関係とした。

## school_elementary：小学校人数

条件：中学校は50人、小学校はその4倍より3人少ない。

根拠：

得られること：小学校は4×50−3=197人。

既習の根拠：倍数から一定数を引く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915D.school_elementary`。

## school_total：合計人数

条件：小学校197人と中学校50人を合わせる。

根拠：

得られること：合計は247人。

既習の根拠：重複しない二群の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915D.school_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0915D.school_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

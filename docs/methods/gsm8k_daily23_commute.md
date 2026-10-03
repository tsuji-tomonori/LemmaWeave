# 自動車通勤と公共交通の人数差

200人の60%である自動車通勤者と、非運転者の半数である公共交通利用者の人数差を求める。

**取得済み固定GSM8Kの1問。参照解の最終差40は誤り。**

- 原文の比較対象は自動車通勤120人と公共交通40人なので差は80人。

## commute_drivers：自動車通勤者

条件：全200人の60%が運転する。

根拠：

得られること：120人。

既習の根拠：百分率。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911B.commute_drivers`。

## commute_non_drivers：非運転者

条件：全員から運転者を除く。

根拠：

得られること：80人。

既習の根拠：補集合の人数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911B.commute_non_drivers`。

## commute_transit：公共交通利用者

条件：非運転者80人の半分が公共交通を使う。

根拠：

得られること：40人。

既習の根拠：半分。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911B.commute_transit`。

## commute_difference：人数差

条件：原文が尋ねる120人と40人を比較する。

根拠：

得られること：120−40=80人多い。

既習の根拠：差。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911B.commute_difference`。

## commute_reference_answer_wrong：参照解の誤記確認

条件：参照解は非運転者80人と公共交通40人の差を計算している。

根拠：

得られること：120−40は40ではなく、参照解の最終値は原問の比較と一致しない。

既習の根拠：具体算術による反証。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911B.commute_reference_answer_wrong`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0911B.commute_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

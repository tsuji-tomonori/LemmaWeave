# 典型的不参加率から予測値と限界を示す

220人のうち通常およそ5%が欠席するという情報から参加人数を考える。

**取得済み固定GSM8Kの1問。**

- 5%をちょうど適用した予測値と、実人数が一意に決まらない点を分ける。

## attendance_show_percent：参加率を求める

条件：不参加率をちょうど5%と置く。

根拠：

得られること：参加率は95%。

既習の根拠：全体100%から5%を引く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913B.attendance_show_percent`。

## attendance_estimate：参加予測値を求める

条件：220人に95%を適用する追加条件を置く。

根拠：

得られること：予測値は209人。

既習の根拠：100×参加人数=95×220という割合の式を解く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913B.attendance_estimate`。

## attendance_actual_bound：実人数の可能範囲を示す

条件：招待予定220人を超えて参加者を数えない。

根拠：

得られること：実参加人数は220人以下。

既習の根拠：招待者集合の部分集合の人数は全体以下。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913B.attendance_actual_bound`。

## attendance_actual_not_unique：実人数が一意でないことを示す

条件：『通常およそ5%』を当日の決定的等式とはしない。

根拠：

得られること：209人と220人はいずれも範囲内で異なるため、実人数は原題だけでは一意でない。

既習の根拠：異なる二つの具体例を示す反例法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913B.attendance_actual_not_unique`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0913B.attendance_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

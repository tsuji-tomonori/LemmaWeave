# 百分率で減った先週分と今週分の燃料合計

今週15ガロン使い、先週は今週より20%少なかった。2週間の合計を求める。

**取得済み固定GSM8Kの1問。**

- 『20% less』の基準を今週15ガロンとし、その20%を引いて先週分を得る。

## fuel_reduction：減少量を求める

条件：先週は今週15ガロンより20%少ない。

根拠：

得られること：減少量は3ガロンである。

既習の根拠：基準量×百分率＝15×20/100を用いる。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912C.fuel_reduction`。

## fuel_last：先週の使用量を求める

条件：今週15ガロンから減少量3ガロンを引く。

根拠：

得られること：先週は12ガロンである。

既習の根拠：減少後の量＝基準量－減少量。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912C.fuel_last`。

## fuel_total：2週間分を合計する

条件：今週15ガロン、先週12ガロンである。

根拠：

得られること：合計は27ガロンである。

既習の根拠：互いに異なる週の使用量を加える。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912C.fuel_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0912C.fuel_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

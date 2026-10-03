# 20%増産後の年間ブドウ量

6か月ごとに90kg使う酒屋が生産を20%増やすとき、1年間に必要なブドウ量を求める。

**取得済み固定GSM8Kの1問。**

- 1年を6か月の期間2回として、年間基準量全体に20%を加える。

## grapes_baseline：増産前の年間量

条件：6か月で90kg、1年には6か月が2回ある。

根拠：

得られること：年間180kg。

既習の根拠：期間数×期間当たり量。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910A.grapes_baseline`。

## grapes_increase：20%の増加量

条件：年間180kgの20%。

根拠：

得られること：36kg増える。

既習の根拠：百分率。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910A.grapes_increase`。

## grapes_total：増産後の年間必要量

条件：基準180kgに36kgを加える。

根拠：

得られること：216kg。

既習の根拠：基準量と増加量の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910A.grapes_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0910A.grapes_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

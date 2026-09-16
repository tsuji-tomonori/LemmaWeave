# 3人が読んだ本の合計

Meganの32冊を基準にKelcieとGregの冊数を求め、3人分を合計する。

**取得済み固定GSM8Kの1問。**

- KelcieはMeganの4分の1、GregはKelcieの2倍より9冊多い。

## reading_kelcie：Kelcieの冊数

条件：KelcieはMeganの32冊の4分の1を読む。

根拠：

得られること：Kelcieは32÷4=8冊。

既習の根拠：全体の4分の1を求める除法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917A.reading_kelcie`。

## reading_total：Gregと3人の合計

条件：GregはKelcieの8冊の2倍より9冊多い。

根拠：

得られること：Gregは2×8+9=25冊、3人の合計は32+8+25=65冊。

既習の根拠：倍と追加の計算後に三つを加える。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917A.reading_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0917A.reading_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

# 補集合の割合からB以上の人数を求める

60人の40%がB未満であるとき、B以上の人数を求める。

**取得済み固定GSM8Kの1問。原文をLLMが個別に解答し、他コレクションへ混ぜない。**

- B未満とB以上が60人を重複なく尽くす補集合として扱う。

## grades_below：B未満の人数

条件：60人の40%がB未満。

根拠：

得られること：B未満は(40/100)×60=24人。

既習の根拠：中学校までの割合。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907D.grades_below`。

## grades_above：B以上の人数

条件：全60人からB未満24人を除く。

根拠：

得られること：B以上は60-24=36人。

既習の根拠：中学校までの補集合と減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907D.grades_above`。

## grades_exists：条件の充足

条件：B未満24人、B以上36人。

根拠：

得られること：割合と全体人数の条件を満たす。

既習の根拠：中学校までの等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907D.grades_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0907D.grades_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

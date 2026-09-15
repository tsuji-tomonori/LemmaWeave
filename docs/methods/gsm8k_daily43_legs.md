# 世帯の人とペットの脚数

人の人数とペットの匹数を別々に数え、脚数を合計する。

**取得済み固定GSM8Kの1問。**

- 人は各2本脚、犬と猫は各4本脚として数える。

## legs_humans：人の脚

条件：Javier本人1人、妻1人、子3人は各2本脚。

根拠：

得られること：5人で10本。

既習の根拠：人数の加法と同じ本数の反復加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915D.legs_humans`。

## legs_pets：ペットの脚

条件：犬2匹と猫1匹は各4本脚。

根拠：

得られること：3匹で12本。

既習の根拠：匹数の加法と4倍。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915D.legs_pets`。

## legs_total：世帯全体

条件：人の脚10本とペットの脚12本を合わせる。

根拠：

得られること：合計22本。

既習の根拠：重複しない二群の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915D.legs_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0915D.legs_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

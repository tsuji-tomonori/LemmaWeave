# 1杯分の比率を人数と容量へ比例させる

8オンスの1杯に茶を1オンス使う比率で、12人へ6オンスずつ用意する。必要な茶を求める。

**取得済み固定GSM8Kの1問。原文をLLMが個別に解答し、他コレクションへ混ぜない。**

- 1オンスの茶で8オンスの飲料を作るレシピ比率が量に比例し、12人全員が6オンスを飲むとする。

## tea_party_drink：飲料の総量

条件：12人が1人6オンスずつ飲む。

根拠：

得られること：総量は12×6=72オンス。

既習の根拠：中学校までの乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907D.tea_party_drink`。

## tea_batches：8オンス分の組数

条件：総量72オンスを1組8オンスで分ける。

根拠：

得られること：72÷8=9組分。

既習の根拠：中学校までの比例と除法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907D.tea_batches`。

## tea_amount：必要な茶

条件：1組につき茶1オンスを9組作る。

根拠：

得られること：必要な茶は9オンス。

既習の根拠：中学校までの比例と乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907D.tea_amount`。

## tea_exists：条件の充足

条件：総量72、9組、茶9オンス。

根拠：

得られること：人数、容量、レシピ比率を満たす。

既習の根拠：中学校までの等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907D.tea_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0907D.tea_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

# 一定速度で64枚の窓を洗う時間を求める

4枚の窓を10分で洗う一定速度で、64枚を順次洗う時間を求める。

**取得済み固定GSM8Kの1問。**

- 窓4枚ごとの時間が常に10分で、並行作業せず順次洗う条件を置く。

## windows_groups：4枚組の個数を求める

条件：全64枚を4枚ずつの組に分け、余りはない。

根拠：

得られること：組数は64÷4=16組。

既習の根拠：全体量を1組の量で割って組数を求める。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914D.windows_groups`。

## windows_time：全組の所要時間を求める

条件：16組を、各組10分で順次洗う。

根拠：

得られること：所要時間は16×10=160分。

既習の根拠：一定の1組当たり時間の反復は組数との積。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914D.windows_time`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0914D.windows_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

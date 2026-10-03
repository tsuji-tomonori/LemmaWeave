# バラ以外の花の割合を求める

バラ25本、チューリップ40本、デイジー35本のうち、バラ以外の百分率を求める。

**取得済み固定GSM8Kの1問。**

- 挙げられた3種類が庭の花の全体であり、バラ以外はチューリップとデイジーである。

## flowers_total：花の総数

条件：3種類の本数を合計する。

根拠：

得られること：25+40+35=100本。

既習の根拠：中学校までの加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908A.flowers_total`。

## flowers_nonroses：バラ以外の本数

条件：チューリップ40本とデイジー35本。

根拠：

得られること：75本。

既習の根拠：中学校までの加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908A.flowers_nonroses`。

## flowers_percentage：百分率

条件：全体100本中75本。全体は0でない。

根拠：

得られること：75÷100×100=75%。

既習の根拠：中学校までの割合。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908A.flowers_percentage`。

## flowers_exists：条件の充足

条件：総数100、バラ以外75、割合75と置く。

根拠：

得られること：本数と百分率の条件を満たす。

既習の根拠：中学校までの等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908A.flowers_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0908A.flowers_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

# 週量と暦年の端数条件を分ける

Jamesは2人それぞれへ3ページの手紙を週2回書く。一年のページ数は？

**既に収集したGSM8Kの1問。入試問題数・新規収集数には加えない。**

- 一年=52週は追加規約。端数日と執筆曜日を未指定のまま624を無条件の厳密値としない。
- 週量と追加執筆回数のモデルを分けて自己照合。

## letters_each_week：1人分の週量

条件：1通3ページを週2回。

根拠：

得られること：3×2=6ページ/人/週。

既習の根拠：中学既習の四則演算と等式変形。

この行のLean定理：`LemmaWeave.Tests.GSM8KFirstSteps.letters_each_week`。

## letters_week：2人分の週量

条件：2人へ同じ頻度。

根拠：

得られること：6×2=12ページ/週。

既習の根拠：中学既習の四則演算と等式変形。

この行のLean定理：`LemmaWeave.Tests.GSM8KFirstSteps.letters_week`。

## letters_period：期間を変数化

条件：同じ週量でw週分を集計。

根拠：

得られること：t=12w。

既習の根拠：中学既習の四則演算と等式変形。

この行のLean定理：`LemmaWeave.Tests.GSM8KFirstSteps.letters_period`。

## letters_52：52週分の答え

条件：一年を52週分とし端数日の追加は数えない。

根拠：

得られること：12×52=624ページ。

既習の根拠：中学既習の四則演算と等式変形。

この行のLean定理：`LemmaWeave.Tests.GSM8KFirstSteps.letters_52`。

## letters_boundary：端数による反例

条件：暦年は52週のほか1日または2日。執筆曜日と期間端の扱いが未指定。

根拠：

得られること：52週と追加0回なら624、追加1回なら6ページ増え630。週2回でも期間端により異なる。

既習の根拠：中学既習の四則演算と等式変形。

この行のLean定理：`LemmaWeave.Tests.GSM8KFirstSteps.letters_boundary`。

## letters_exists：条件付き充足

条件：52週分を対象とする。

根拠：

得られること：624は週数52のモデルを満たす。

既習の根拠：中学既習の四則演算と等式変形。

この行のLean定理：`LemmaWeave.Tests.GSM8KFirstSteps.letters_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KFirstSteps.letters_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

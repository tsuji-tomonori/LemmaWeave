# 通常勤務と残業を分けて賃金を求める

時給18ドル。1日の8時間を超えた分は時給にその半分を加えた額。1日10時間を5日間働くと賃金はいくらか。

**収集済みGSM8Kの1問をLLMが個別に解答。新規収集には数えない。**

- 原題の割増規則を数学モデルにするもので、労働法・実在の賃金制度の助言ではない。
- 8時間を超えた部分だけが割増。毎日の勤務が同じ10時間なので日額を5倍する。全10時間に割増時給を掛けない。

## overtime_hours：割増対象の時間を分ける

条件：通常8時間と残業時間の和が1日10時間。

根拠：[保存式から残量を求める](remaining_balance.md)

得られること：残業は10−8=2時間。

既習の根拠：全体から部分を引く保存関係。

この行のLean定理：`LemmaWeave.Tests.GSM8KNextSteps.overtime_hours`。

## overtime_rate：割増時給を求める

条件：通常時給18ドルにその半分を足す。

根拠：

得られること：割増時給=18+(1/2)×18=27ドル/時。

既習の根拠：割合と加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KNextSteps.overtime_rate`。

## overtime_regular：通常分の日額を求める

条件：通常時給18ドル、通常8時間。

根拠：

得られること：通常分=18×8=144ドル/日。

既習の根拠：単価×数量。

この行のLean定理：`LemmaWeave.Tests.GSM8KNextSteps.overtime_regular`。

## overtime_premium：残業分の日額を求める

条件：残業2時間、割増時給27ドル。

根拠：

得られること：残業分=27×2=54ドル/日。

既習の根拠：単価×数量。

この行のLean定理：`LemmaWeave.Tests.GSM8KNextSteps.overtime_premium`。

## overtime_daily：1日分を合計する

条件：通常分と残業分は勤務時間を重複なく分割する。

根拠：

得られること：日額=144+54=198ドル。

既習の根拠：重複のない部分の合計。

この行のLean定理：`LemmaWeave.Tests.GSM8KNextSteps.overtime_daily`。

## overtime_weekly：5日分へ換算する

条件：5日とも同じ条件・勤務時間。

根拠：

得られること：5日分=198×5=990ドル。

既習の根拠：同じ日額の反復。

この行のLean定理：`LemmaWeave.Tests.GSM8KNextSteps.overtime_weekly`。

## overtime_exists：すべての数量が条件を満たすことを確認する

条件：残業2時間、時給27、通常144、残業54、日額198、5日990。

根拠：

得られること：すべて非負で、原題の時間・単価・合計の関係を同時に満たす。

既習の根拠：四則演算と単位の確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KNextSteps.overtime_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KNextSteps.overtime_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

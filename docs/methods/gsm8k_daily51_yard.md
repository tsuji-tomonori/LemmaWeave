# 庭仕事で不足額を貯める時間

23時間で460ドルを得た時給を用い、追加8時間の収入と車修理340ドル支出後に600ドルのゲーム機を買うための追加労働時間を求める。

**取得済み固定GSM8Kの1問。**

- 全期間で時給20ドルが変わらない条件を原文の計算意図として用いる。

## yard_hourly：時給

条件：23時間で460ドルを得た。

根拠：

得られること：時給は20ドル。

既習の根拠：単価＝金額÷時間。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0918B.yard_hourly`。

## yard_fall：後半の収入

条件：同じ時給で8時間働く。

根拠：

得られること：後半の収入は160ドル。

既習の根拠：金額＝単価×時間。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0918B.yard_fall`。

## yard_gross：総収入

条件：460ドルと160ドルを合計する。

根拠：

得られること：総収入は620ドル。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0918B.yard_gross`。

## yard_remaining：修理後の残金

条件：総収入620ドルから修理費340ドルを支払う。

根拠：

得られること：残金は280ドル。

既習の根拠：差の関係。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0918B.yard_remaining`。

## yard_shortfall：不足額

条件：ゲーム機は600ドルで残金は280ドル。

根拠：

得られること：不足額は320ドル。

既習の根拠：差の関係。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0918B.yard_shortfall`。

## yard_additional：追加時間

条件：不足320ドルを時給20ドルで得る。

根拠：

得られること：さらに16時間必要。

既習の根拠：時間＝金額÷時給。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0918B.yard_additional`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0918B.yard_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

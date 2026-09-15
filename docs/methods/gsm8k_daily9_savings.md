# 毎日の貯金額と年の日数から合計を求める

Sallyは日給6ドル、Bobは日給4ドルで、それぞれ半分を旅行用に貯めるとき、1年後の合計貯金額を求める。

**取得済み固定GSM8Kの1問。勤務日数不足を含む有効な個別解答。**

- 毎日働く追加条件を置いても、平年365日と閏年366日で答えが異なる。勤務しない日があればさらに総額は変わる。

## savings_sally_daily：Sallyの1日貯金

条件：日給6ドルの半分を貯める。

根拠：

得られること：3ドル/日。

既習の根拠：中学校までの分数と除法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908D.savings_sally_daily`。

## savings_bob_daily：Bobの1日貯金

条件：日給4ドルの半分を貯める。

根拠：

得られること：2ドル/日。

既習の根拠：中学校までの分数と除法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908D.savings_bob_daily`。

## savings_regular：平年かつ毎日勤務の条件付き解

条件：2人とも365日毎日働き、1日合計5ドルを貯める。

根拠：

得られること：5×365=1825ドル。

既習の根拠：中学校までの乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908D.savings_regular`。

## savings_leap：閏年かつ毎日勤務の条件付き解

条件：2人とも366日毎日働き、1日合計5ドルを貯める。

根拠：

得られること：5×366=1830ドル。

既習の根拠：中学校までの乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908D.savings_leap`。

## savings_possible：毎日勤務時の可能範囲

条件：年の日数が365日または366日で、両者が毎日働く。

根拠：

得られること：1825ドルまたは1830ドル。

既習の根拠：場合分け。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908D.savings_possible`。

## savings_ambiguity：一意性がないことの確認

条件：平年と閏年の双方が原文と両立する。

根拠：

得られること：1825≠1830。さらに勤務日数も未指定なので、参考値1825は平年・毎日勤務の追加条件付き。

既習の根拠：反例による一意性否定。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908D.savings_ambiguity`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0908D.savings_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

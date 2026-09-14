# 残り個数からグリル回数を求める

115個必要で40個調理済み、1回15個焼けるとき、残りに必要な回数を求める。

**取得済み固定GSM8Kの1問。**

- 各回を15個までではなく15個ちょうど焼く一単位とし、残数75は割り切れる。

## grill_remaining：未調理個数を求める

条件：必要115個のうち40個は調理済み。

根拠：

得られること：残りは75個。

既習の根拠：全体から済みの部分を引く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914C.grill_remaining`。

## grill_sessions：必要回数を求める

条件：1回15個で、75個は15で割り切れる。

根拠：

得られること：75÷15=5回。

既習の根拠：総個数を1回分で割る。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914C.grill_sessions`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0914C.grill_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

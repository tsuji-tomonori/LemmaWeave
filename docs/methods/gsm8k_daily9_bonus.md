# ボーナス選択時の時給を求める

通常は日給80ドル・8時間勤務で、20ドルのボーナスを得ると勤務が2時間延びるとき、ボーナス選択時の時給を求める。

**取得済み固定GSM8Kの1問。**

- 総日給を総労働時間で割る平均時給を問う。

## bonus_hours：ボーナス時の勤務時間

条件：通常8時間より2時間長い。

根拠：

得られること：10時間。

既習の根拠：中学校までの加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908D.bonus_hours`。

## bonus_total_pay：ボーナス時の日給

条件：通常80ドルに20ドルを加える。

根拠：

得られること：100ドル。

既習の根拠：中学校までの加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908D.bonus_total_pay`。

## bonus_hourly：時給

条件：100ドルを10時間で得る。

根拠：

得られること：100÷10=10ドル/時。

既習の根拠：中学校までの単位量の除法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908D.bonus_hourly`。

## bonus_exists：条件の充足

条件：総時間10、総日給100、時給10と置く。

根拠：

得られること：延長時間、ボーナス、時給の条件を満たす。

既習の根拠：等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908D.bonus_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0908D.bonus_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

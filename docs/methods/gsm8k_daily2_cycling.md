# 通勤と週末の走行距離から自転車時間を求める

職場まで20マイルを5日往復し、週末200マイル走る。時速25マイルなら週何時間か。

**取得済み固定GSM8Kの1問。LLMが原文から個別に解答し、新規取得件数・日本入試件数へ混ぜない。**

- 25mphを移動中の一定速度として扱い、休憩・信号待ちを含めない。
- 参考解答の文中にあるtotal 200+200の前半をworkと呼ぶ誤記は採用せず、全体400と区別する。

## cycling_daily：1日の通勤距離

条件：片道20マイルを往復。

根拠：

得られること：40マイル/日。

既習の根拠：中学校までの比例・一次方程式・四則演算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907B.cycling_daily`。

## cycling_work：週の通勤距離

条件：40マイルを5日。

根拠：

得られること：200マイル/週。

既習の根拠：中学校までの比例・一次方程式・四則演算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907B.cycling_work`。

## cycling_all：全走行距離

条件：通勤200と週末200を合計。

根拠：

得られること：400マイル。

既習の根拠：中学校までの比例・一次方程式・四則演算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907B.cycling_all`。

## cycling_hours：距離・速さ・時間

条件：平均走行速度を一定の25mphとし、停止時間を含めない。

根拠：

得られること：25h=400より16時間。

既習の根拠：中学校までの比例・一次方程式・四則演算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907B.cycling_hours`。

## cycling_unit_check：割り算による確認

条件：時間=距離÷速さ、25≠0。

根拠：

得られること：400÷25=16時間。

既習の根拠：中学校までの比例・一次方程式・四則演算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907B.cycling_unit_check`。

## cycling_exists：条件の充足

条件：日40、週通勤200、全体400、時間16。

根拠：

得られること：距離合成と速度式をすべて満たす。

既習の根拠：中学校までの比例・一次方程式・四則演算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907B.cycling_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0907B.cycling_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

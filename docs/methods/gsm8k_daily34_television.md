# テレビの週間電力量と料金を求める

125ワットのテレビを毎日4時間使い、1kWh 14セントで週間料金を求める。

**取得済み固定GSM8Kの1問。**

- 125ワットを一定消費電力と読み、ワット時からキロワット時への1000倍の単位換算を料金式に含める。

## television_daily：1日の電力量を求める

条件：125ワットで4時間使う。

根拠：

得られること：1日500Wh。

既習の根拠：電力量=電力×時間を用いる。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913C.television_daily`。

## television_weekly_energy：週間電力量を求める

条件：毎日500Whを7日使う。

根拠：

得られること：週間3500Wh、すなわち3.5kWh。

既習の根拠：500×7と1000Wh=1kWhを用いる。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913C.television_weekly_energy`。

## television_weekly_cost：週間料金を求める

条件：1kWh当たり14セントで3500Wh使う。

根拠：

得られること：週間料金は49セント。

既習の根拠：3500×14÷1000を単位付きで計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913C.television_weekly_cost`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0913C.television_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

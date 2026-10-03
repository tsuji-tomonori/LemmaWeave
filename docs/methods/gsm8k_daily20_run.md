# 金曜日に走る時間

時速6マイルで週20マイルに達するため、金曜日に走る分数を求める。

**取得済み固定GSM8Kの1問。**

- 時速と分は speed×minutes=miles×60 で換算する。

## run_monday：月曜日

条件：時速6マイルで60分走る。

根拠：

得られること：6マイル走る。

既習の根拠：距離=速さ×時間、1時間=60分。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910D.run_monday`。

## run_tuesday：火曜日

条件：時速6マイルで30分走る。

根拠：

得られること：3マイル走る。

既習の根拠：距離=速さ×時間、30分=1/2時間。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910D.run_tuesday`。

## run_wednesday：水曜日

条件：時速6マイルで60分走る。

根拠：

得られること：6マイル走る。

既習の根拠：距離=速さ×時間。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910D.run_wednesday`。

## run_thursday：木曜日

条件：時速6マイルで20分、すなわち1/3時間走る。

根拠：

得られること：2マイル走る。

既習の根拠：距離=速さ×時間。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910D.run_thursday`。

## run_so_far：木曜日まで

条件：6、3、6、2マイルを合算する。

根拠：

得られること：17マイル走った。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910D.run_so_far`。

## run_needed：不足距離

条件：目標20マイルから17マイルを引く。

根拠：

得られること：あと3マイル必要。

既習の根拠：目標と実績の差。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910D.run_needed`。

## run_friday：金曜日の時間

条件：時速6マイルで3マイル走る。分単位では6×分=3×60。

根拠：

得られること：答えは30分。

既習の根拠：時間=距離÷速さと単位換算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910D.run_friday`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0910D.run_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

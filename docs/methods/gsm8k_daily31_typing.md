# 分速を日数まで単位変換して総語数を求める

分速50語で毎日4時間、7日間連続して入力する総語数を求める。

**取得済み固定GSM8Kの1問。**

- 1時間を60分とし、指定時間中は分速50語が一定と読む。

## typing_hour：1時間の語数へ換算する

条件：分速50語が60分間一定である。

根拠：

得られること：1時間に3000語入力する。

既習の根拠：速さ×時間として50×60を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912E.typing_hour`。

## typing_day：1日の語数を求める

条件：1時間3000語の速さで1日4時間入力する。

根拠：

得られること：1日に12000語入力する。

既習の根拠：1時間の量×時間数を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912E.typing_day`。

## typing_total：7日間の総語数を求める

条件：1日12000語を7日間続ける。

根拠：

得られること：合計84000語入力する。

既習の根拠：1日の量×日数を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912E.typing_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0912E.typing_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

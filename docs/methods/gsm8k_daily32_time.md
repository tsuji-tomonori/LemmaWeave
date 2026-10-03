# 一週間の総時間から活動時間を差し引く

授業・宿題・睡眠・仕事の一週間分を168時間から引き、残り時間を求める。

**取得済み固定GSM8Kの1問。**

- 各活動時間が重複しないものとして加える。参照解の「8*7-56」は等号の誤記で、8×7=56を採用する。

## time_total：一週間の総時間を求める

条件：一日は24時間、一週間は7日。

根拠：

得られること：総時間は168時間。

既習の根拠：7×24を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913A.time_total`。

## time_homework：宿題時間を週換算する

条件：毎日4時間を7日続ける。

根拠：

得られること：宿題は28時間。

既習の根拠：4×7を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913A.time_homework`。

## time_sleep：睡眠時間を週換算する

条件：毎日8時間眠る。

根拠：

得られること：睡眠は56時間。

既習の根拠：8×7を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913A.time_sleep`。

## time_busy：予定済み時間を合計する

条件：宿題28、授業18、睡眠56、仕事20時間が互いに重ならない。

根拠：

得られること：予定済みは122時間。

既習の根拠：28+18+56+20を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913A.time_busy`。

## time_left：残り時間を求める

条件：168時間のうち122時間を使う。

根拠：

得られること：残りは46時間。

既習の根拠：168=122+46となる差を求める。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913A.time_left`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0913A.time_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

# 歌唱時間に比例する練習・癇癪時間の合計

本番歌唱1分ごとに練習3分、癇癪5分を費やす。本番6分のとき三活動の合計時間を求める。

**取得済み固定GSM8Kの1問。**

- 練習と癇癪を本番歌唱時間に対する比例量とし、本番時間も含めて合計する。

## opera_practice：練習時間を求める

条件：本番歌唱は6分で、その1分ごとに3分練習する。

根拠：

得られること：練習時間は18分である。

既習の根拠：基準時間×比例係数を用いる。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912C.opera_practice`。

## opera_tantrums：癇癪時間を求める

条件：本番歌唱は6分で、その1分ごとに5分癇癪を起こす。

根拠：

得られること：癇癪時間は30分である。

既習の根拠：基準時間×比例係数を用いる。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912C.opera_tantrums`。

## opera_total：三活動を合計する

条件：本番6分、練習18分、癇癪30分である。

根拠：

得られること：合計時間は54分である。

既習の根拠：重ならない活動時間を加える。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912C.opera_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0912C.opera_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

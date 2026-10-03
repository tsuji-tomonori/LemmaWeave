# 一日のクッキー量を30日分へ換算する

朝と就寝前に半個ずつ、日中に2個食べる犬の30日分を、45個入り箱で何箱用意するか求める。

**取得済み固定GSM8Kの1問。**

- 毎日同量を食べ、箱の45個を余りなく使える。

## cookies_daily：一日の個数

条件：朝1/2個、就寝前1/2個、日中2個。

根拠：

得られること：一日3個。

既習の根拠：同じ単位の分数と整数を加える。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912D.cookies_daily`。

## cookies_total：30日分

条件：一日3個を30日続ける。

根拠：

得られること：90個必要。

既習の根拠：総量＝一日量×日数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912D.cookies_total`。

## cookies_boxes：箱数を求める

条件：90個必要で、一箱45個入り。

根拠：

得られること：2箱必要。

既習の根拠：総個数＝箱数×一箱の個数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912D.cookies_boxes`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0912D.cookies_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

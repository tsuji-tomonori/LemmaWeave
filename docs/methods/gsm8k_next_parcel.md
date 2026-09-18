# 重さを変化した順序で追う

箱に菓子を入れて総重量2ポンドにする。追加して重さを3倍にし、さらに2ポンド足し、最後に追加して重さを2倍にする。最終重量はいくらか。

**収集済みGSM8Kの1問をLLMが個別に解答。新規収集には数えない。**

- 原題の最初の2ポンドは秤に載せた箱を含む総重量。参考解答の「2ポンドのジェリービーンズ」という言い換えを採用しない。
- 各倍率はその操作直前の総重量に掛かる。途中の2ポンド加算を最後へ移さない。

## parcel_tripled：最初の総重量を3倍にする

条件：箱を含む総重量が2ポンド。

根拠：

得られること：追加後は3×2=6ポンド。

既習の根拠：数量の倍。

この行のLean定理：`LemmaWeave.Tests.GSM8KNextSteps.parcel_tripled`。

## parcel_added：2ポンド追加する

条件：3倍にした後の総重量6ポンドへ追加する。

根拠：

得られること：6+2=8ポンド。

既習の根拠：同じ単位の重量の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KNextSteps.parcel_added`。

## parcel_doubled：その時点の総重量を2倍にする

条件：2ポンド追加後の8ポンドが倍率の基準。

根拠：

得られること：2×8=16ポンド。

既習の根拠：数量の倍、操作順序。

この行のLean定理：`LemmaWeave.Tests.GSM8KNextSteps.parcel_doubled`。

## parcel_exists：すべての操作を満たす重量を示す

条件：途中の総重量を6、8、16ポンドと取る。

根拠：

得られること：3倍、2ポンド追加、2倍の条件を順番どおり満たす。

既習の根拠：四則演算、単位の一致。

この行のLean定理：`LemmaWeave.Tests.GSM8KNextSteps.parcel_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KNextSteps.parcel_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

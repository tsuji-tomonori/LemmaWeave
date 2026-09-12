# 果物飲料の価格

AndyとBobの支払額が同じとき、Bobの果物飲料の価格を求める。

**取得済み固定GSM8Kの1問。**

- two sandwiches for $3を2個合計3ドルと読む。各3ドルならBobの既知分だけでAndyの5ドルを超え、非負の飲料価格と同額条件が両立しない。

## snacks_andy：Andyの支払額

条件：ソーダ1ドル、ハンバーガー2個を各2ドルで買う。

根拠：

得られること：Andyは1+2×2=5ドル払う。

既習の根拠：単価と個数の積および加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911A.snacks_andy`。

## snacks_bob：Bobの支払額

条件：2人が同額を支払った。

根拠：

得られること：Bobの支払額も5ドル。

既習の根拠：等量関係。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911A.snacks_bob`。

## snacks_drink：飲料価格

条件：2個のサンドイッチ合計が3ドルという読みで、Bobの合計が5ドルである。

根拠：

得られること：条件付きの答えは5−3=2ドル。

既習の根拠：合計から既知費用を引く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911A.snacks_drink`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0911A.snacks_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

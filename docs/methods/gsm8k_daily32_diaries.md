# 追加購入後の4分の1損失を順に計算する

8冊の2倍を追加購入し、その後の総数の4分の1を失った残りを求める。

**取得済み固定GSM8Kの1問。**

- double the numberを、元の8冊とは別に16冊買ったという原文の順序で扱う。

## diaries_bought：購入冊数を求める

条件：持っていた8冊の2倍を買う。

根拠：

得られること：16冊を買う。

既習の根拠：2×8を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913A.diaries_bought`。

## diaries_before：紛失前の総数を求める

条件：元の8冊に購入した16冊を加える。

根拠：

得られること：紛失前は24冊。

既習の根拠：8+16を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913A.diaries_before`。

## diaries_lost：失った冊数を求める

条件：24冊の4分の1を失う。

根拠：

得られること：6冊を失う。

既習の根拠：4×失った冊数=24を満たす自然数は6。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913A.diaries_lost`。

## diaries_remaining：残冊数を求める

条件：24冊から6冊を失う。

根拠：

得られること：残りは18冊。

既習の根拠：24=6+18となる差を求める。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913A.diaries_remaining`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0913A.diaries_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

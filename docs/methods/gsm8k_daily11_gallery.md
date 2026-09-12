# 旅行で増えた写真をギャラリーへ加える

元の400枚に、初日200枚と初日より120枚多い2日目の写真を加えた総数を求める。

**取得済み固定GSM8Kの1問。**


## gallery_first：初日の写真

条件：初日は元の400枚の半分を撮る。

根拠：

得られること：初日は200枚。

既習の根拠：半分の割合。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908F.gallery_first`。

## gallery_second：2日目の写真

条件：2日目は初日より120枚多い。

根拠：

得られること：200+120=320枚。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908F.gallery_second`。

## gallery_trip：旅行中の写真合計

条件：初日200枚、2日目320枚。

根拠：

得られること：旅行中は520枚。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908F.gallery_trip`。

## gallery_total：追加後の総数

条件：元の400枚へ旅行中の520枚を追加する。

根拠：

得られること：合計920枚。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908F.gallery_total`。

## gallery_exists：条件の充足

条件：初日200、2日目320、旅行520、総数920と置く。

根拠：

得られること：半分、120枚増、追加の全条件を満たす。

既習の根拠：数値等式の確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908F.gallery_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0908F.gallery_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

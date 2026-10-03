# 5年間の模型列車

毎年誕生日に1両、クリスマスに2両を5年間もらい、その後それまでの所持数の2倍を追加でもらうときの総数を求める。

**取得済み固定GSM8Kの1問。**

- double the number ... give himを既存数の2倍の追加贈与と読む。

## trains_yearly：1年分

条件：誕生日1両とクリスマス2両を毎年もらう。

根拠：

得られること：1年に3両。

既習の根拠：年内の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911C.trains_yearly`。

## trains_first_five：5年間分

条件：同じ3両の贈与が5年間続く。

根拠：

得られること：5×3=15両。

既習の根拠：一定量の反復。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911C.trains_first_five`。

## trains_gift：最後の追加贈与

条件：両親は既存15両の2倍を追加で与える。

根拠：

得られること：追加は30両。

既習の根拠：倍率。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911C.trains_gift`。

## trains_total：現在の総数

条件：既存15両に追加30両を加える。

根拠：

得られること：合計45両。

既習の根拠：既存量と追加量の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911C.trains_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0911C.trains_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

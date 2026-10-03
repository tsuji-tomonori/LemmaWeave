# 速度が途中で変わるダウンロード時間を求める

90MBのうち最初の60MBは5MB/s、残りは10MB/sで取得する総時間を求める。

**取得済み固定GSM8Kの1問。**

- 区間ごとに容量÷速度で時間を求め、連続する2区間の時間を加える。

## download_first：最初の区間

条件：60MBを5MB/sで取得する。

根拠：

得られること：60÷5=12秒。

既習の根拠：中学校までの速さの公式。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907E.download_first`。

## download_remaining：残り容量

条件：全90MBから60MBを引く。

根拠：

得られること：30MB。

既習の根拠：中学校までの減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907E.download_remaining`。

## download_remaining_time：残り区間

条件：30MBを10MB/sで取得する。

根拠：

得られること：3秒。

既習の根拠：中学校までの速さの公式。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907E.download_remaining_time`。

## download_total：総時間

条件：連続する2区間の時間を足す。

根拠：

得られること：12+3=15秒。

既習の根拠：中学校までの加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907E.download_total`。

## download_exists：条件の充足

条件：各値を12秒、30MB、3秒、15秒と置く。

根拠：

得られること：容量、速度、総時間の条件を満たす。

既習の根拠：中学校までの等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907E.download_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0907E.download_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。

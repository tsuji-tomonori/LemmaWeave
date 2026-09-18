# 郵便物と追加料金から切手枚数を求める

カード、請求書、リベート、応募書類を別々に送り、電気代だけ切手2枚が必要なときの総切手数を求める。

**取得済み固定GSM8Kの1問。**

- カード3通、請求書2通。電気代の2枚目を郵便物総数へ1枚追加する。

## stamps_rebates：リベート通数

条件：請求書2通より3通多い。

根拠：

得られること：リベートは5通。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909A.stamps_rebates`。

## stamps_applications：応募書類通数

条件：応募書類はリベートの2倍。

根拠：

得られること：10通。

既習の根拠：倍の乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909A.stamps_applications`。

## stamps_pieces：郵便物総数

条件：カード3、請求書2、リベート5、応募10。

根拠：

得られること：郵便物は20通。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909A.stamps_pieces`。

## stamps_total：必要切手数

条件：各通1枚、電気代だけさらに1枚。

根拠：

得られること：21枚。

既習の根拠：例外分の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909A.stamps_total`。

## stamps_exists：条件の充足

条件：3、2、5、10、20、21と置く。

根拠：

得られること：全条件を満たす。

既習の根拠：数値等式の確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909A.stamps_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0909A.stamps_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
